---
author: hasp
date: 20210919
topics: setup, win, visual studio
version: 0.2
draft: true
---

# Visual Studio Setup

Once again to ensure that every student has the same software version (and the same installation folder), we will install Visual Studio by using the package manager chocolatey.

```powershell
choco install visualstudio2019-installer visualstudio2019community -y
choco install visualstudio2019-workload-manageddesktopbuildtools -y

#OPTIONAL (C Programming)
#choco install visualstudio2019buildtools -y
#choco install visualstudio2019-workload-vctools -y
```

See also [Git on VS](https://github.com/litec-hasp/git-intro/blob/master/99_git-on-VS.md)
