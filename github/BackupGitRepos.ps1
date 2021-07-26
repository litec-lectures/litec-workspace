Param (
    #[String] $userName,
    [String] $organisationName,
    [String] $backupDirectory,

    [ValidateRange(1,256)]
    [Int] $maxConcurrency=8
)

Import-Module -Name PowerShellForGitHub

# Default the backup directory to './YYYYMMDD'. This can
# not be done in the Param section because $PSScriptRoot
# will not be resolved if this script gets invoked from cmd.
if (!$backupDirectory) {
    $backupDirectory = $(Join-Path -Path "$PSScriptRoot" -ChildPath $(Get-Date -UFormat "%Y%m%d"))
}

# Measure the execution time of the backup script.
$stopwatch = [System.Diagnostics.Stopwatch]::startNew()

# Fetch all repos
Write-Host "Fetching Repository List/Info from Github..."
if ($organisationName) {
    $repositories = Get-GitHubRepository -OrganizationName $organisationName 
} else {
    $repositories = Get-GitHubRepository -Affiliation owner
}

# Print a userfriendly message what will happen next.
Write-Host "Cloning $($repositories.Count) repositories " -NoNewLine
Write-Host "into '${backupDirectory}' with a maximum concurrency of ${maxConcurrency}:"

# Clone each repository into the backup directory.
ForEach ($repository in $repositories) {

    while ($true) {

        # Handle completed jobs as soon as possible.
        $completedJobs = $(Get-Job -State Completed)
        ForEach ($job in $completedJobs) {
            $job | Receive-Job
            $job | Remove-Job
        }

        $concurrencyLimitIsReached = $($(Get-Job -State Running).Count -ge $maxConcurrency)
        if ($concurrencyLimitIsReached) {

            $pollingFrequencyInMilliseconds = 50
            Start-Sleep -Milliseconds $pollingFrequencyInMilliseconds
            continue
        }

        # Clone or fetch a remote GitHub repository into a local directory.
        $scriptBlock = {

            Param (
                [Parameter(Mandatory=$true)]
                [String]
                $fullName,

                [Parameter(Mandatory=$true)]
                [String]
                $directory
            )

            if (Test-Path "${directory}") {

                git --git-dir="${directory}" fetch --quiet --all
                git --git-dir="${directory}" fetch --quiet --tags
                Write-Host "[${fullName}] Backup completed with git fetch strategy."
                return
            }

            git clone --quiet --mirror "https://github.com/${fullName}.git" "${directory}"
            Write-Host "[${fullName}] Backup completed with git clone strategy."
        }

        # Suffix the repository directory with a ".git" to indicate a bare repository.
        $directory = $(Join-Path -Path $backupDirectory -ChildPath "$($repository.name).git")

        Write-Host "[$($repository.full_name)] Starting backup to ${directory}..." -ForegroundColor "DarkYellow"
        Start-Job $scriptBlock -ArgumentList $repository.full_name, $directory | Out-Null

        # Give the job some time to start.
        $warmUpTimeoutInMilliseconds = 50
        Start-Sleep -Milliseconds $warmUpTimeoutInMilliseconds

        break
    }
}

# Wait for the last jobs to complete and output their results.
Get-Job | Receive-job -AutoRemoveJob -Wait

$stopwatch.Stop()
$durationInSeconds = [Math]::Floor([Decimal]($stopwatch.Elapsed.TotalSeconds))
Write-Host "Successfully finished the backup in ${durationInSeconds} seconds." -ForegroundColor "Yellow"