---
author: hasp
date: 20230930
version: 0.3
draft: false
---
# GitHub Repository Tools and Infos

## For Students

Just have a look at the document [MigrateGitRepo.md](./MigrateGitRepo.md) - this is the only interesting information for you here. :wink:

## For Teachers

The information contained in this document (and this folder) is intended for "administrational" usage.
If you want to backup/clone all your repositories or that of an organization - this is the right place for you.
Otherwise you can just leave here without any regrets...

## Github Classroom - Save all Assignments

> Link: [Using GitHub Classroom with GitHub CLI - GitHub Docs](https://docs.github.com/en/education/manage-coursework-with-github-classroom/teach-with-github-classroom/using-github-classroom-with-github-cli)

By far the easiest way to create a backup of all Assignments of a github classroom assignment is by using the github cli and install the classroom plugin.

### Setup


1. Open CLI and install github cli and install classroom plugin:

   ```powershell
   winget install  GitHub.cli
   ```

2. Restart your CLI and install the plugin:

   ```powershell
   gh extension install github/gh-classroom
   ```

### Usage

#### Clicking-Method

1. Visit [Your Classrooms (github.com)](https://classroom.github.com/classrooms) 
2. Choose (click) assignment 
3. Click the green Download-Button and click `Student Repositories`
4. Copy CLI code and paste it in your CLI
5. DONE

#### CLI Method

1. Open CLI and perform (if you have more than 100 repos increase `--per-page`):

   ```powershell
   gh classroom clone student-repos --per-page 100
   ```

2. Choose your classroom (arrows and enter)
3. Choose your assignment (arrows and enter)
4. DONE!

---

---

> OPTIONAL STUFF below:

## Used Links

### Backup / Transfer

- [Backup Gist](https://github.com/countzero/backup_github_repositories/blob/master/backup_github_repositories.ps1) - has a nice threading approach, uses REST API
- [Local Backup](https://markb.uk/local-github-repository-backup-with-powershell.html) - simple, but uses GraphQL - nice!
- [Difference --mirror / --bare](https://stackoverflow.com/questions/3959924/whats-the-difference-between-git-clone-mirror-and-git-clone-bare) - just to know what to backup
- [Mirror Repo to new one](https://medium.com/cloud-native-the-gathering/how-to-mirror-copy-an-entire-existing-git-repository-into-a-new-one-3bb8faefad9e) - transfer info for students
- [GitHub Transfer](https://docs.github.com/en/github/administering-a-repository/managing-repository-settings/transferring-a-repository) - transfer info for admin/teacher

### Image Storage

The following links give just some ideas how to store images on github (and to prevent big chunks of binary data by deleting the extra branch in case of new images).

- [Images in branch](https://medium.com/@minamimunakata/how-to-store-images-for-use-in-readme-md-on-github-9fb54256e951)
- [Images in branch - gist](https://gist.github.com/joncardasis/e6494afd538a400722545163eb2e1fa5)
- [Delete branch](https://www.makeuseof.com/how-to-delete-branch-git/)

## Backup Batch Script

### Preparation

1. Create a "backup token" - visit <https://github.com/settings/tokens/new>
   - check at least  `repo`, `admin:org -> read:org`, and `user` checkboxes and press `Generate Token`
   - copy the generated token for later (and store it for example within a password-manager)
2. DONE!

### Own Script with GraphQL - Just Because We Can

1. Read and learn: <https://www.robinwieruch.de/getting-started-github-graphql-api> (part 1 and 2)
   - look especially at the 2nd part (pagination)
2. Tryout: <https://docs.github.com/en/graphql/overview/explorer>
3. use the two `graphql`-files within this folder.

### Alternative - PowerShellForGitHub Module

Use <https://github.com/microsoft/PowerShellForGitHub> as base - makes life much easier (but uses REST API). For Setup follow the Installation and Configuration steps from the readme there. Here the short version:

1. `Install-Module -Name PowerShellForGitHub -Scope CurrentUser`
2. Create a new API token by going to <https://github.com/settings/tokens/new> (provide a description and check any appropriate scopes).
3. Call `Set-GitHubAuthentication`, enter anything as the username (the username is ignored but required by the dialog that pops up), and paste in the API token as the password. That will be securely cached to disk and will persist across all future PowerShell sessions. If you ever wish to clear it in the future, just call `Clear-GitHubAuthentication`).
4. DONE!

Some usage examples:

```powershell
# HELP
Get-Help Get-GitHubRepository -Examples

# ORG
$sew2repos = Get-GitHubRepository -OrganizationName litec-SEW2
$sew2repos.count

# USER
# ALL repos where current authenticated user has access to (can be a long list!)
$repos = Get-GitHubRepository
# owned repos
$ownedRepos = Get-GitHubRepository -Affiliation owner
```
