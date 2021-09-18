---
author: hasp
date: 20210915
topics: setup, win, vs code
version: 0.1 - so expect some hiccups
---

# Visual Studio Code Setup - @tbd

```powershell
choco install vscode -y
```

close/reopen CLI

```powershell
# must-have
code --install-extension eamodio.gitlens
code --install-extension streetsidesoftware.code-spell-checker
code --install-extension streetsidesoftware.code-spell-checker-german

code --install-extension VisualStudioExptTeam.vscodeintellicode

# markdown
code --install-extension DavidAnson.vscode-markdownlint
code --install-extension yzhang.markdown-all-in-one

# c/c++ programming
code --install-extension danielpinto8zz6.c-cpp-compile-run      
code --install-extension danielpinto8zz6.c-cpp-project-generator
code --install-extension ms-vscode.cpptools
code --install-extension platformio.platformio-ide

# remote connections
ms-vscode-remote.vscode-remote-extensionpack
```

See [VS Code CLI commands](https://code.visualstudio.com/docs/editor/command-line)