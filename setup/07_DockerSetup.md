---
author: hasp
date: 20210919
version: 0.0.1 - absolutely not proof-read
draft: true
---

> BEWARE! DRAFT! DRAFT! DRAFT! DRAFT! DRAFT! DRAFT! DRAFT! DRAFT! DRAFT!

# Docker Desktop @ Win10 Install (with WSL2)

## Preparation Steps

1. Install [chocolatey](https://chocolatey.org/install).
2. `choco install docker-desktop -y`
3. log out and log in again / or restart pc

## Setup WSL2

The setup of WSL2 is the tricky part (but definitely doable).

1. Enable WSL  @ elevated PS-CLI:

   ```powershell
   Enable-WindowsOptionalFeature -Online -FeatureName $("VirtualMachinePlatform", "Microsoft-Windows-Subsystem-Linux") 
   ```

2. Activate WSL2 kernel (follow steps of https://aka.ms/wsl2kernel)

   - download [WSL Kernel update](https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi) and run the msi-installer

   - activate WSL 2 @ elevated PS-CLI:

     ```powershell
     wsl --set-default-version 2
     ```

   - OPTIONAL: Install a distro and windows terminal (follow steps mentioned @ link above).

## Docker Desktop

1. Start Docker-Desktop
2. Work through Start-Tutorial - a real good starting point if you are new to docker.
   - PS Cli: `docker run -d -p 80:80 docker/getting-started`
   - Visit `localhost:80`within your browser and "get started"

## Tune your Workspace - VS Code

My personal preference to work with docker is VS Code (and some plugins), but you can use any other editor and use Docker-Desktop directly for container and image management.

If you are going to join my crew - start up VS Code - it worth the trip.

1. Start VS Code
2. Open a "docker-directory" e.g. `D:\docker`
3. Create a workspace within that folder (always good to work with workspaces...)
4. Install at least these two plugins (both are too good to be left alone):
   - `code --install-extension ms-azuretools.vscode-docker`
   - `code --install-extension ms-vscode-remote.vscode-remote-extensionpack` - a meta-package for:
     - Remote-WSL
     - Remote-Containers
     - Remote-SSH
5. Now click the docker-sign on the left or
6. remote-Explorer and open the container
7. And now be "WOW"-ed! (and learn some [Italian...](https://www.wordhippo.com/what-is/the-meaning-of/italian-word-sbalorditivo.html))

![img](https://media1.tenor.com/images/b7de07ee62442f41159683ed98ea6a13/tenor.gif)

---

For an in-depth introduction to docker see [HASP's docker-intro](https://github.com/litec-hasp/docker-intro) - a bit dated but still ok.
