---
author: hasp
date: 20220918
version: 0.0.2 - absolutely not proof-read
draft: true
---

> BEWARE! NOT FINISHED! Docker dekstop will no longer be used!
> Use your brain when folloign theses steps!
> Instead docker directly wthin WSL 2 (Ubuntu) will be used - together with VS Code!

# Docker Desktop @ Win10/11 Install (with WSL2)

## Prerequisites

1. Windows 10 should have all the latest updates installed (at least Version 20H04, better: Version 22H2)
2. VS Code with Remote-Extensionpack plugin (ms-vscode-remote.vscode-remote-extensionpack) is installed.
   - install VS code: `winget install vscode`
   - install pugin: `code --install-extension ms-vscode-remote.vscode-remote-extensionpack` - a meta-package for:
     - Remote-WSL
     - Remote-Containers
     - Remote-SSH

## Setup and Install WSL2

> Link: [WSL Install - MS Learn](https://learn.microsoft.com/en-us/windows/wsl/install)

1. Open elevated Powershell CLI (as administrator)
2. Simply enter the command:
   
   ```powershell
   wsl --install
   ```
   
   This will install everything needed (activate some windows features/requirements, ... ) and finally an Ubuntu distribution.
   
   > If the step above gave you troubles, then sadly you might need to follow this [manual installation of WSL](https://learn.microsoft.com/en-us/windows/wsl/install-manual).
   
3. The step above might need a restart of your pc, 
   - but in the end you should land in an Ubuntu console and setup your [username and password](https://learn.microsoft.com/en-us/windows/wsl/setup/environment#set-up-your-linux-username-and-password).
   - if this is not done automatically, just open powershell CLI and enter `wsl` command
4. Finally upgrade you WSL packages (within Ubuntu): `sudo apt update && sudo apt upgrade`

## Setup and Install Docker within WSL

> Links:
> - <https://dev.to/bartr/install-docker-on-windows-subsystem-for-linux-v2-ubuntu-5dl7>
>   - OLD! Use that one with care!
>   - has nice features like 
>     - adding docker autostart to profile
>     - docker group (add user)
> - <https://docs.docker.com/engine/install/ubuntu/>
>   - typical installation of docker on ubuntu
>   
> - THE Way to go: <https://nickjanetakis.com/blog/install-docker-in-wsl-2-without-docker-desktop>
>   - user group setup
>   - RECOMMENDATION: enable systemd!
>   

## Tune your Workspace - VS Code

My personal preference to work with docker is VS Code (and some plugins), but you can use any other editor and use Docker-Desktop directly for container and image management.

If you are going to join my crew - start up VS Code - it's worth the trip.

1. Start VS Code: within wsl (home) folder: just type `code .`
2. Its your fist time to start code within wsl -> a vs code server is installed
3. Install at least this plugin (within WSL)
   - `code --install-extension ms-azuretools.vscode-docker`
6. And now be "WOW"-ed! (and learn some [Italian...](https://www.wordhippo.com/what-is/the-meaning-of/italian-word-sbalorditivo.html))

![img](https://media1.tenor.com/images/b7de07ee62442f41159683ed98ea6a13/tenor.gif)

---

For an in-depth introduction to docker see [HASP's docker-intro](https://github.com/litec-hasp/docker-intro) - a bit dated but still ok.
