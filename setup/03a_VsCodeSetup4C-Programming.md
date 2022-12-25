---
author: hasp
date: 20221225
topics: setup, win, vscode
version: 0.1
draft: false
---

# Visual Studio Code Setup for C-Programming

If you haven't done that step so far, open a powershell CLI, and install Visual Studio Code:

```powershell
winget install Microsoft.VisualStudioCode
```

## Extensions

Open a CLI, and copy the extensions you want to install line by line.

(*The lines starting with an `#` are just some additional comments - no need to copy them!*)

```powershell
# Spell-Checker
code --install-extension streetsidesoftware.code-spell-checker
code --install-extension streetsidesoftware.code-spell-checker-german

# Intellisense for vs code
code --install-extension VisualStudioExptTeam.vscodeintellicode

# markdown
code --install-extension bierner.github-markdown-preview

# c/c++ programming
code --install-extension ms-vscode.cpptools

# make file support [optional]
code --install-extension vscode.makefile-tools
```

## Installation and Setup of Msys2 / MinGW

> This section is mainly based on [C++ Setup on vsCode](https://code.visualstudio.com/docs/languages/cpp#_example-install-mingwx64).

To compile and run c programs on windows the installation of a build packages is necessary.
We will use the mingw package within the [msys2](https://www.msys2.org/) environment ( a collection of tools that ports linux commands to windows).

1. So, spin up a CLI and install it:

   ```powershell
   winget install msys2.msys2
   ```
   
   This installed the base package, now we need to install he tools for c programming.

2. Use Windows Search to open up an msys2 console (search for `msys2 msys`). Open up *that* program which is another CLI. Perform the following command (and select `all` when asked):

    ```bash
    pacman -S --needed base-devel mingw-w64-x86_64-toolchain
    ```

    This will install the MinGW toolchain containing a c and a c++ compiler (`gcc`, `g++`), a debugger (`gdb`), and a make tool (`make`).

3. Add the MinGW compiler and the make tool to your Windows `PATH`:

   1. In the Windows search bar type `environment variables` (or in German `Umgebungsvariablen`) and choose `Edit the system environment variables`.
   2. Choose the Path variable in system variables and then select `Edit`.
   3. **C-Compiler**: Select `New` and add the Mingw-w64 destination folder path `C:\msys64\mingw64\bin` to the system path.
   4. **Make Tool**: Select `New` once again and add `C:\msys64\usr\bin` to the system path.

      > :warning: This gives access to a lot of unix tools under windows (like `touch`, `wget`, `grep`, ...) but might interfere with other installed software packages. Always consider this warning when you have some strange behavior on your system!

    5. Select OK to save the updated PATH. You will need to reopen any console windows for the new PATH location to be available.

4. [OPTIONAL] If you want to be sure your everything is setup the right way, just follow this [link](https://code.visualstudio.com/docs/languages/cpp#_hello-world) and create a `hello world` program. Take care, this is not a c project, but a c++ project.
