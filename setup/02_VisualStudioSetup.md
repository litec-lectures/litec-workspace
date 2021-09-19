---
author: hasp
date: 20210919
topics: setup, win, visual studio
version: 0.2
draft: true
---

# Visual Studio Setup

Once again to ensure that every student has the same software version (and the same installation folder), we will install Visual Studio by using the package manager chocolatey.

1. Open an elevated powershell CLI and install the base system:

   ```powershell
   choco install visualstudio2019-installer visualstudio2019community -y
   ```

   Wait some time and (worst case scenario) restart your computer.

2. (If a reboot was performed reopen elevated powershell CLI.)
3. Install the Managed Desktop Development Workload:

   ```powershell
   choco install visualstudio2019-workload-manageddesktop --package-parameters "--passive" -y
   ```

    This workload is needed for C# GUI development (WPF and Winforms).

4. **[OPTIONAL]** Install the VCTools:

   ```powershell
   choco install visualstudio2019-workload-vctools --package-parameters "--passive" -y
   ```

    The VCTools are used for native C and C++ development.

5. **[OPTIONAL]** Install the Build Tools:

   ```powershell
   choco install visualstudio2019buildtools --package-parameters "--passive" -y
   ```

    The Visual Studio Build Tools allows you to build native and managed applications without requiring the Visual Studio IDE. You can use the command line instead.

6. You are DONE!
