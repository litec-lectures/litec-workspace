---
author: hasp
date: 20210719
topics: setup, win, chocolatey
version: 0.1 - so expect some hiccups
---

## Chocolatey Installation

### Setup

1. Open an elevated PowerShell console.

2. Run the following command within the console:

   ```powershell
   Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
   ```

   In case of an error you might want to visit the chocolatey webpage directly, and copy the install command from there: https://chocolatey.org/install.

3. Close, and reopen the  elevated PowerShell console.

4. Install the ALWAYS needed packages, by running the following command:

   ```powershell
   choco install vscode typora -y
   ```

   Those two packages are great editors - one for markdown (`typora`) and one for EVERTHING (`vscode`). The `-y` on the end means that any questions during the installation process are answered with "yes".

5. Your are DONE! 

6. Read on, if you want to know:

   - What is chocolatey? A package manager.
   - Basic usage of chocolatey.
   - Recommended Software packages you can install with choco.

## Chocolatey - Package Manager

To ensure that al students have the same setup on their computers, a package manager like chocolatey is a time- and life-safer.

> A **package manager** or **package-management system** is a collection of software tools that automates the process of installing, upgrading, configuring, and removing computer programs for a computer's operating system in a consistent manner.[^wikipedia]
>
> [^wikipedia]:https://en.wikipedia.org/wiki/Package_manager

In the future we might switch to `winget`, but the project is too young yet.

