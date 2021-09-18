---
author: hasp
date: 20210918
topics: setup, win, chocolatey
version: 0.2
draft: false
---

# Chocolatey Installation

## Setup

1. Open an elevated PowerShell console.

2.  Copy and paste the following command to the powershell console and start by pressing the `return`-button:

   ```powershell
   Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
   ```

   > In case of an error you might want to visit the chocolatey webpage directly, and copy the install command from there - see <https://chocolatey.org/install/>.

3. Close and reopen the  elevated PowerShell console.

4. Install the ALWAYS needed packages, by running the following command:

   ```powershell
   choco install vscode typora -y
   ```

   Those two packages are great editors:
    - **Typora** is for writing in markdown - see [Mastering Markdown](https://guides.github.com/features/mastering-markdown/) if you want to learn about it. **Learing *markdown* is really important for writing short documents and notes - EVEYONE should have at least a basic understanding** (for example - all documents presented here are written in markdown).
    - **Visaul Studio Code** is THE editor for software developers for nearly EVERTHING- get used to it!
    - Small information about the command above: the `-y` at the end means that any questions during the installation process are automatically answered with "yes".

5. Your are DONE!

6. Read on, if you want to know:

   - What is chocolatey? (A package manager).
   - Basic usage of chocolatey.
   - Recommended Software package(s) to install with `choco`.

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

**ALWAYS start an elevated powershell console when working with chocolatey!**

```powershell
# searching for a given software package:
choco list <packagename>

# list all locally installed packages (managed by chocolatey)
choco list -la

# list ALL locally installed packages (even those that are not managed by chocolatey)
choco list -lai

# list installed outdated packages (a newer version exists and could be installed)
choco outdated

# install a package
choco install <packagename> -y

# upgrade a package / upgrade all packages
choco upgrade <packagename> -y
choco upgrade all -y

# uninstall a package
choco uninstall <packagename> -y
```

### Recommended Package(s)

If you need a graphical representation of the chocolatey installer perform the following command within an elevated powershell console:

```powershell
choco install chocolateygui -y
```

After that you can use the Chocolatey GUI instead of the command line if you are the visual type. Just type `chocolatey gui` within your search field of the taskbar and start the application.

Follow [this guide](https://m.xkcd.com/627/) to learn about the usage of `chocolatey gui`.
