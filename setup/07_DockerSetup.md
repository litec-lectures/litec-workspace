---
author: hasp
date: 20240928
draft: maybe!
---

# Docker @ Win10/11 Install (with WSL2)

> We won't use Docker Desktop, instead we will install everything within WSL (Windows Subsystem for Linux).

## Prerequisites

1. Windows should have all the latest updates installed!
2. VS Code with Remote-Extensionpack plugin (ms-vscode-remote.vscode-remote-extensionpack) is installed.
   - install VS code: `winget install vscode`
   - install plugin: `code --install-extension ms-vscode-remote.vscode-remote-extensionpack` - a meta-package for:
     - Remote-WSL
     - Remote-Containers
     - Remote-SSH

## Setup and Install WSL2

> Based on: [WSL Install - MS Learn](https://learn.microsoft.com/en-us/windows/wsl/install)

1. Open elevated Powershell CLI (as administrator)
2. Simply enter the command:

   ```powershell
   wsl --install
   ```

   This will install everything needed (activate some windows features/requirements, ... ) and finally an Ubuntu distribution.

   > [!Note]
   > If the step above gave you troubles, then sadly you might need to follow this [manual installation of WSL](https://learn.microsoft.com/en-us/windows/wsl/install-manual).

3. The step above might need a restart of your pc,
   - but in the end you should land in an Ubuntu console and setup your [username and password](https://learn.microsoft.com/en-us/windows/wsl/setup/environment#set-up-your-linux-username-and-password).
   - if this is not done automatically, just open powershell CLI and enter `wsl` command
4. Finally upgrade you WSL packages (within Ubuntu): `sudo apt update && sudo apt upgrade`

## Setup and Install Docker within WSL

> Based on:
> - [Install Docker on WSL2 (Ubuntu)](https://dev.to/bartr/install-docker-on-windows-subsystem-for-linux-v2-ubuntu-5dl7) **OUTDATED!**
> - [Install Docker Engine on Ubuntu](https://docs.docker.com/engine/install/ubuntu/)
> - [Install Docker in WSL 2 without Docker Desktop](https://nickjanetakis.com/blog/install-docker-in-wsl-2-without-docker-desktop) **WAY2GO!** (Enable `systemd`!)

1. Open PowerShell CLI (or Terminal) and enter `wsl` to start Ubuntu

2. OPTIONAL: uninstall Docker Desktop - in case you have it installed

   - see [Install Docker in WSL 2 without Docker Desktop](https://nickjanetakis.com/blog/install-docker-in-wsl-2-without-docker-desktop) for deinstallation information

3. Install Docker (and compose) - you can ignore the warning from Docker about using WSL:

   ```bash
   # download (and start) install script (ignore the warning that we are inWSL and should use Docker Desktop)
   curl -fsSL https://get.docker.com -o get-docker.sh
   sudo sh get-docker.sh
   
   # Add your user to the Docker group
   sudo usermod -aG docker $USER
   
   # Sanity check that both tools were installed successfully
   docker --version
   docker compose version
   
   # Using Ubuntu 22.04 or Debian 10+? You need to do 1 extra step for iptables
   # compatibility, you'll want to choose option (1) to use iptables-legacy from
   # the prompt that'll come up when running the command below.
   #
   # You'll likely need to reboot Windows or at least restart WSL after applying
   # this, otherwise networking inside of your containers won't work.
   sudo update-alternatives --config iptables
   ```

4. Enable `systemd` (for details see [Advanced settings configuration in WSL](https://learn.microsoft.com/en-us/windows/wsl/wsl-config#systemd-support)):

   - Open (or create) `/etc/wsl.conf` file in a text editor by using `sudo` for admin permissions:
     - either use `sudo nano /etc/wsl.conf` 
     - or  `sudo vi /etc/wsl.conf` 
   - Add these two lines to the config file:

   ```bash
   [boot]
   systemd=true
   ```

   - Close your WSL distribution using `wsl.exe --shutdown` from PowerShell 
   - Restart your WSL instance by typing `wsl` .
   - Once your distribution restarts, `systemd` should be running.
   - You can confirm using the command: `systemctl list-unit-files --type=service`, which will show the status of your services.
   - Worst case you need to type once: `sudo systemctl start docker`
     - Worst worst case: you need to start docker manually every time (use command above) - try to find another solution yourself!

## Tune your Workspace - VS Code

My personal preference to work with docker is VS Code (and some plugins), but you can use any other editor and use Docker-Desktop directly for container and image management.

If you are going to join my crew - start up VS Code - it's worth the trip.

1. Start VS Code: within wsl (home) folder: just type `code .`
2. Its your fist time to start code within wsl -> a vs code server is installed (takes some time)
3. Install at least this plugin (within WSL)
   - `code --install-extension ms-azuretools.vscode-docker`
6. And now be "WOW"-ed! (and learn some [Italian...](https://www.wordhippo.com/what-is/the-meaning-of/italian-word-sbalorditivo.html))

![img](https://media1.tenor.com/images/b7de07ee62442f41159683ed98ea6a13/tenor.gif)

---

For an in-depth introduction to docker see [HASP's docker-intro](https://github.com/litec-hasp/docker-intro) - a bit dated but still ok.
