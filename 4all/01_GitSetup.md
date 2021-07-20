---
author: hasp
date: 20210720
topics: setup, win, git
version: 0.1 - so expect some hiccups
---

# GIT

## Setup

1. Open an elevated PowerShell console.

2. Run the following command within the console:

   ```powershell
   choco install git -y
   ```

3. Close and reopen the  elevated PowerShell console.

4. Perform the 2 commands (replace`<fullname>` with your name (whitespaces are ok), and `<email>` with the given school email address).

   ```powershell
   git config --global user.name "<fullname>"
   git config --global user.email "<email>"
   ```

   More information on a first setup can be found on: [First Time Git Setup](https://git-scm.com/book/en/v2/Getting-Started-First-Time-Git-Setup).

5. Your are (nearly) DONE!

6. Read on, if you want to know:

   - What is git? A version control system.
   - Basic usage of git.
   - Usage of github.com.

## Git - Version Control System

---

**UNFINISHED!** (all below is not yet written for git - just a copy from choco setup!)
@TDB add gh cli!

---

To ensure that all students have the same setup on their computers, a package manager like chocolatey is a time- and life-safer.

> A **package manager** or **package-management system** is a collection of software tools that automates the process of installing, upgrading, configuring, and removing computer programs for a computer's operating system in a consistent manner.[^wikipedia]
>
> [^wikipedia]:https://en.wikipedia.org/wiki/Package_manager

If you want to find out more about `chocolatey` visit [Chocolatey Software | Courses](https://community.chocolatey.org/courses).

### Basic `git` Commands

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

### GitHub

```powershell
choco install 7zip chocolateygui firefox irfanview vlc -y
```
