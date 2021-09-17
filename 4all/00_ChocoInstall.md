---
author: hasp
date: 20210719
topics: setup, win, chocolatey
version: 0.1 - so expect some hiccups
---

# Chocolatey Installation

## Setup

1. Open an elevated PowerShell console.

2. Run the following command within the console:

   ```powershell
   Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
   ```

   In case of an error you might want to visit the chocolatey webpage directly, and copy the install command from there: <https://chocolatey.org/install/>.

3. Close and reopen the  elevated PowerShell console.

4. Install the ALWAYS needed packages, by running the following command:

   ```powershell
   choco install vscode typora -y
   ```

   Those two packages are great editors - one for markdown (`typora`) and one for EVERTHING (`vscode`). The `-y` on the end means that any questions during the installation process are answered with "yes".

5. Your are DONE!

6. Read on, if you want to know:

   - What is chocolatey? A package manager.
   - Basic usage of chocolatey.
   - Recommended Software packages to install with `choco`.

## Chocolatey - Package Manager

To ensure that all students have the same setup on their computers, a package manager like chocolatey is a time- and life-safer.

> A **package manager** or **package-management system** is a collection of software tools that automates the process of installing, upgrading, configuring, and removing computer programs for a computer's operating system in a consistent manner.[^wikipedia]
>
> [^wikipedia]:https://en.wikipedia.org/wiki/Package_manager

In the future we might switch to [`winget`](https://github.com/microsoft/winget-cli), but the project is too young yet.

If you want to find out more about `chocolatey` visit [Chocolatey Software | Courses](https://community.chocolatey.org/courses).

## Basic `choco` Commands

For a full list of commands see [Chocolatey Software Docs | Commands](https://docs.chocolatey.org/en-us/choco/commands/).

### Most important commands

```powershell
# searching for a given software package:
choco list <packagename>

# list all locally installed packages (managed by chocolatey)
choco list -la

# list all locally installed packages
choco list -lai

# list locally installed outdated packages
choco outdated

# install a package
choco install <packagename> -y

# upgrade a package / upgrade all packages
choco upgrade <packagename> -y
choco upgrade all -y

# uninstall a package
choco uninstall <packagename> -y
```

### Some Recommended Packages

```powershell
choco install 7zip chocolateygui -y
```
