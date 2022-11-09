---
author: hasp
date: 20220917
topics: setup, win, package manager
version: 0.3
draft: false
---

# Base Tools Explanations and Setup

## Package Manager `winget`

To ensure that all students have the same setup on their computers, a package manager like `winget` (or chocolatey) is a time- and life-safer.  If your Windows 10 or 11 is up to date, then `winget` should already be installed - otherwise install it via your Microsoft Store.

> A **package manager** or **package-management system** is a collection of software tools that automates the process of installing, upgrading, configuring, and removing computer programs for a computer's operating system in a consistent manner.[^wikipedia]
>
> [^wikipedia]: https://en.wikipedia.org/wiki/Package_manager

If you want to find out more about `winget` visit [microsoft/winget-cli: Windows Package Manager CLI (aka winget) (github.com)](https://github.com/microsoft/winget-cli).

### `winget` Usage

To see a list of all important commands just open up a Command Line Interface (CLI), for example a PowerShell console (right click on your windows start symbol and choose `Windows PowerShell` or `Windows PowerShell (Admin)`), and then just type `winget` :

```powershell
winget
```

---

> **Most of the time you will just use those five commands:**
>
> - `install` - Installs the given package
> - `search` - Find and show basic info of packages
> - `list` - Display installed packages
> - `upgrade` - Shows and performs available upgrades
> - `uninstall`- Uninstalls the given package

---

### `winget` Tryout

Let's start by installing Firefox. Start a PowerShell console and type:

```power
winget search firefox
```

This will search the winget database for software related to Firefox. You will see different variants and versions - we will use the standard, so look for the `Id` in the second row: `Mozilla.Firefox`, we need that for the installation step:

```powershell
winget install Mozilla.Firefox
```

If you want to remove a software package type:

```powershell
winget uninstall Mozilla.Firefox
```

Let's have a look at all your installed package

```powershell
winget list
```

This list all your locally installed software, the first row gives the Name, the second row (IMPORTANT) gives the package `Id` (we need that to install or upgrade the software), the third row shows the current installed version and the fourth if a newer version is available.

Now try:

```powershell
winget upgrade
```

Similar to above this will show installed packages, but only those that can be upgraded. 

To update one package type:

```powershell
winget upgrade <Id>
```

where the placeholder `<Id>` is the text that is listed on the `Id`-row. For example (if you have Firefox installed and a newer version is available):

```powershell
winget upgrade Mozilla.Firefox
```

Alternatively one can try to upgrade all packages by:

```powershell
winget upgrade --all
```

That's it! 

## Basic Installation

Once gain start a PowerShell console (elevated or not - thats up to you, I would recommend the `Admin` variant) and keep it open during the installation steps below.

---

### Visual Studio Code - Editor [NEEDED!]

```powershell
winget install Microsoft.VisualStudioCode
```

Visual Studio Code (short: vs code) is THE editor for software developers for nearly EVERTHING. Nowadays a developer does not need to install any other IDEs (Integrated Development Environments) to get work done. This one might be sufficient for nearly everything. Give it a try!

---

### MarkText - Markdown Editor [RECOMMENDED!]

```powershell
winget install MarkText.MarkText
```

**MarkText** is an open soruce editor for writing in markdown - see [Mastering Markdown](https://guides.github.com/features/mastering-markdown/) if you want to learn about it. **Learning *markdown* is really important for writing short documents and notes - EVEYONE should have at least a basic understanding** (for example - all documents presented here are written in markdown).

This package is recommended, however one can also use vs code for markdown documents.

#### MarkText Setup

MarkText needs some finetuning for a smooth usage:

1. Start MarkText
2. Open Preferences (`Menu -> File -> Preferences` or `Ctrl + ,`)
   1. **Spelling**: set spellchecker to German or English (both need to be installed via Windows Setup)
   2. **Theme**: Up to you... (light /  dark)
   3. **Image**:
      - Default Action: *Move to designated local folder*
      - Activate *Prefer relative assets folder*
      - Relative image folder name: `img` or `_img` or `assets` or `res` (resource)
   4. Consider to use GitHub as ImageUploader [OPTIONAL]
3. Start writing with Mark Text:
   - Most important character: `@` at beginning of a paragraph - shows you all possible options
   - **BEWARE!** Not all features are GitHub compatible!

---

### Windows Terminal and gsudo [RECOMMENDED!]

```powershell
winget install Microsoft.WindowsTerminal
winget install gerardog.gsudo
```

A very good tab-based terminal (CLI - command line interface) for windows users (Microsoft, but open source). We will expand the terminal with the possibility to directly open an elevated PowerShell console as tab with the aid of [gsudo](https://github.com/gerardog/gsudo) ( a `sudo` for Windows - run elevated without spawning a new console host window - see also [sudo - Wikipedia](https://en.wikipedia.org/wiki/Sudo)).

#### Windows Terminal Setup

Terminal also needs some finetuning for a smooth usage:

1. Start Windows Terminal
2. Open Settings (`Down-Arrow in tab field -> Settings` or `Ctrl + ,`)
3. `Add new profile`:
   1. Duplicate Windows PowerShell Profile
   2. *Name*: `Windows Powershell [Admin]`
   3. *Command line*: `gsudo powershell.exe`
   4. *Starting Directory*: Check `Use parent process directory`
4. Save Profile

>  You now can also start an elevated PowerShell console within Windows Terminal! :+1:
>
>  And you now have `sudo` on Windows - another "Linuxifying" step!



---

### Virtualization [TOTALLY OPTIONAL]

For management and creation of VMs (Virtual Machines).

Talk to your teachers in ITSI, NWT, SYT, SEW if you already need virtualization, and which of those two you are going to use during your lessons. There are two good options:

- [Oracle VM VirtualBox](https://www.virtualbox.org/) - open source
- [VMware Workstation Player | VMware](https://www.vmware.com/products/workstation-player.html) - proprietary, but free to use

To install these:

```powershell
winget install Oracle.VirtualBox
winget install VMware.WorkstationPlayer
```

---

### `winget`- GUI and Package Search Online  [TOTALLY OPTIONAL]

1. If you need a GUI to install and uninstall packages - have a look [martinet101/WingetUI: WingetUI: a package manager for Winget and Scoop (github.com)](https://github.com/martinet101/WinGetUI).

   ```powershell
   winget install SomePythonThings.WingetUIStore
   ```

2. If you want an online graphical search (with some package info) try https://winget.run/.



