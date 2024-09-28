---
author: hasp
date: 20240928
topics: setup, win, vs code
---

# Visual Studio Code Setup

If you haven't done that step so far, open an elevated powershell CLI, and install Visual Studio Code:

```powershell
winget install Microsoft.VisualStudioCode
```

The basic installation is DONE!

The next subsection gives an overview of so-called vs code extensions, which "tune up" your editor to be a full blown IDE. A lot of the following extensions are optional - you have to choose for yourself what you are going to install.

---

> **The following extension overview shows just some preferences of HASP, they need not be seen as a canonical selection! Find your own extensions and play around with them!**

---

## Extensions

Open a CLI, and copy the extensions you want to install line by line.

(*The lines starting with an `#` are just some additional comments - no need to copy them!*)

### Must-Have Extensions

```powershell
# Git / GitHub support
code --install-extension eamodio.gitlens

# Spell-Checker
code --install-extension streetsidesoftware.code-spell-checker
code --install-extension streetsidesoftware.code-spell-checker-german

# intellisense for vs code
code --install-extension VisualStudioExptTeam.vscodeintellicode
```

### Must-Have Extensions for 3rd to 5th Grade

Optional for 2nd grade students.

```powershell
# remote connections (ssh / container / wsl)
code --install-extension ms-vscode-remote.vscode-remote-extensionpack

# docker management
code --install-extension ms-azuretools.vscode-docker
```

### Recommended Extensions [OPTIONAL]

```powershell
# markdown
code --install-extension bierner.github-markdown-preview

# REST and GraphQL client
code --install-extension humao.rest-client

# c/c++ programming
code --install-extension ms-vscode.cpptools

# powershell development
code --install-extension ms-vscode.powershell

# arduino
code --install-extension vsciot-vscode.vscode-arduino

# alternative for arduino / microcontroller development
code --install-extension platformio.platformio-ide

# vs liveshare (team / pair programming)
code --install-extension ms-vsliveshare.vsliveshare-pack

# CSV visualization
code --install-extension mechatroner.rainbow-csv

# vscode editor color management
code --install-extension johnpapa.vscode-peacock
```

## Additional Information

- If you want to learn more about using vs code from the CLI, then see [VS Code CLI commands](https://code.visualstudio.com/docs/editor/command-line).

## Exporting VS Code Extension List

The following mini-script (one-liner) is just needed, if you want to export YOUR installed extensions and give the list to other persons.

```powershell
code --list-extensions | % { "code --install-extension $_" }
```
