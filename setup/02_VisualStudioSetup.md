---
author: hasp
date: 20220918
topics: setup, win, visual studio
version: 0.3
draft: false
---

# Visual Studio Setup

To ensure that every student has the same software version (and the same installation folder), we will install Visual Studio by using the package manager `winget`.

*The installation will download a lot of data and will take a lot of time! We are talking about 8 GB or more and installation time of at least 5 min (fast system!) or more!*

There are different install variants - depending on what you need - talk to your SEW teacher!

## Base Installation - C/C++

> **For 1st grade students!**

```powershell
winget install Microsoft.VisualStudio.2019.Community --silent --override "--wait --quiet --addProductLang En-us --add Microsoft.VisualStudio.Workload.NativeDesktop"
```

## Standard Installation - C# and C/C++

> **For 2nd grade students!**

```powershell
winget install Microsoft.VisualStudio.2019.Community --silent --override "--wait --quiet --addProductLang En-us --add Microsoft.VisualStudio.Workload.NativeDesktop --add Microsoft.VisualStudio.Workload.ManagedDesktop"
```
## Extended Installation - ASP.Net, C#, and C/C++

> **For 4th grade students!**

```powershell
winget install Microsoft.VisualStudio.2019.Community --silent --override "--wait --quiet --addProductLang En-us --add Microsoft.VisualStudio.Workload.NativeDesktop --add Microsoft.VisualStudio.Workload.ManagedDesktop --add Microsoft.VisualStudio.Workload.NetWeb"
```

---

## Some Additional Information

### Visual Studio 2022 [OPTIONAL]

If you additionally want to use the 2022 Version of Visual Studio - you just have to replace the year `2019` in the install commands by `2022`. It is possible to have both versions installed. **BEWARE! This occupies a lot of GBs of SSD space!**. Example of extended Installation:

```powershell
winget install Microsoft.VisualStudio.2022.Community --silent --override "--wait --quiet --addProductLang En-us --add Microsoft.VisualStudio.Workload.NativeDesktop --add Microsoft.VisualStudio.Workload.ManagedDesktop --add Microsoft.VisualStudio.Workload.NetWeb"
```

### On Workloads

Those are visual studio collections for different programming tasks. For a full List see: [Visual Studio workload and component IDs | Microsoft Learn](https://learn.microsoft.com/en-us/visualstudio/install/workload-and-component-ids?view=vs-2019)

The following workloads are of interest for development on our school:

- *Microsoft.VisualStudio.Workload.NativeDesktop* (C/C++ development - for 1st grade students and up)
- *Microsoft.VisualStudio.Workload.ManagedDesktop* (C# development - for 2nd grade students and up)
- *Microsoft.VisualStudio.Workload.NetWeb* (ASP.Net web development - for 4th grade students)

### Additional CLI Parameters for Installation

See: [Command-line parameter examples for installation - Visual Studio (Windows) | Microsoft Learn](https://learn.microsoft.com/en-us/visualstudio/install/command-line-parameter-examples?view=vs-2019)

and [Alexandre Nédélec - Customize your applications when installing them with winget (techwatching.dev)](https://www.techwatching.dev/posts/winget-override)
