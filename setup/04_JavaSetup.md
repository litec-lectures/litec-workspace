---
author: hasp
date: 20220918
version: 0.2
draft: false
---

# Java Setup

> A pretty easy one to install!

1. Start an elevated PowerShell console, and perform the following commands:

   ```powershell
   winget install Microsoft.OpenJDK.17 
   winget install JetBrains.IntelliJIDEA.Community.EAP
   ```

2. We also need a CLI build tool sometimes: `maven` - sadly this is not incorporated in `winget` yet - so either use [Chocolatey](https://chocolatey.org/) (only if you already installed it) by `choco install maven -y`, or see [How to Install Maven on Windows {Step-by-Step Guide} (phoenixnap.com)](https://phoenixnap.com/kb/install-maven-windows) .

   **It really hurts that maven is not a winget package yet!** :sob:

3. You are DONE!

---

## Some Additional Information

- We will use OpenJDK 17 for the next year(s), as it is an LTS (Long Time Support) version.
  - As we are on Windows we will use the Microsoft variant (see [About the Microsoft Build of OpenJDK](https://learn.microsoft.com/en-us/java/openjdk/overview))
- We will use maven as our standard **build tool** from the command line (and within Intellij). Gradle build tool will just be used with Android Studio.
- Community Edition of Intellj IDE is sufficient for most exercises and use cases at LiTec. If the Ultimate version is needed you will get instructions during the lessons.
