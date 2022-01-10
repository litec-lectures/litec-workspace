---
author: hasp
date: 20220110
topics: setup, win, markdown, terminal
version: 0.1
draft: false
---

# Base Tools Installation

We will install and "tune" some common tools for IT students at LiTec.

1. **Markdown**: [Mark Text](https://marktext.app/) (alternative to Typora)
2. **Terminal**: [Windows Terminal](https://docs.microsoft.com/en-us/windows/terminal/) (see also [git repo]([microsoft/terminal: The new Windows Terminal and the original Windows console host, all in the same place! (github.com)](https://github.com/Microsoft/Terminal)))
3. **\*nix SuperUser DO** (sudo): [gsudo - run elevated without spawning a new Console Host Window](https://github.com/gerardog/gsudo)

## Installation

1. Open an elevated PowerShell console.

2. Run the following command:

   ```powershell
   choco install marktext microsoft-windows-terminal gsudo -y
   ```

3. Your are DONE!

## Setup Mark Text

Very good open source markdown editor alternative to Typora.

1. Start Mark Text
2. Open Preferences (`Menu -> File -> Preferences` or `Ctrl + ,`)
   1. **Spelling**: set spellchecker to German or English (both need to be installed via Windows Setup)
   2. **Theme**: Up to you... (light /  dark)
   3. **Image**:
      - Default Action: *Move to designated local folder*
      - Activate *Prefer relative assets folder*
      - Relative image folder name: `img` or `_img` or `assets` or `res` (resource)
   4. Consider to use GitHub as ImageUploader
3. Start writing with Mark Text:
   - Most important character: `@` at beginning of an paragraph - shows you all possible options
   - **BEWARE!** Not all features are GitHub compatible!

## Setup Terminal

A very good tab-based terminal (CLI - command line interface) for windows users (Microsoft, but open source). We will expand the terminal with the possibility to directly open an elevated PowerShell console as tab with the aid of `gsudo`.

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
> And you now have `sudo` on Windows - another "Linuxifying" step!









