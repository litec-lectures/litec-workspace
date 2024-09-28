---
author: hasp
date: 20240928
draft: false
---

# Java Setup

> A pretty easy one to install!

1. Start an elevated PowerShell console, and perform the following commands:

   ```powershell
   winget install EclipseAdoptium.Temurin.21.JDK
   winget install JetBrains.IntelliJIDEA.Community
   ```

2. `maven` (CLI build tool)`maven` - sadly this is not incorporated in `winget`!
   - OLD WAY: use [Chocolatey](https://chocolatey.org/) (only if you already installed it) by `choco install maven -y`
   - COMPLICATED WAY: [How to Install Maven on Windows {Step-by-Step Guide} (phoenixnap.com)](https://phoenixnap.com/kb/install-maven-windows), or
   - EASY WAY: install `UniGetUI`, and install maven with this GUI package manager:
     - perform: `winget install MartiCliment.UniGetUI`
     - open UniGetUI, and check in **Settings** (lower left), that the package manager `chocolatey` is activated,
     - switch back to **Discover Packages** and search for maven
     - install the chocolatey:community version (use "install as administrator" - the shield-sign left of "install selected packages"

   **It really hurts that maven is not a winget package yet!** :sob:

4. You are DONE!

---

## Some Additional Information

- We will use OpenJDK 21 for the next year(s), as it is an LTS (Long Time Support) version.  
- We will use maven as our standard **build tool** from the command line (and within Intellij).
- Gradle build tool will just be used with Android Studio.
- Community Edition of Intellj IDE is sufficient for most exercises and use cases at LiTec. If the Ultimate version is needed you will get instructions during the lessons.
