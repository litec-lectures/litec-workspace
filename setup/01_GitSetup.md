---
author: hasp
date: 20210918
topics: setup, win, git
version: 0.2
draft: true
---

# GIT - Version Control System

> **Git** is software for tracking changes in any set of files, usually used for coordinating work among programmers collaboratively developing source code during software development. Its goals include speed, data integrity, and support for distributed, non-linear workflows (thousands of parallel branches running on different systems). [^wikipedia_git]
>
> [^wikipedia_git]:https://en.wikipedia.org/wiki/Git

## Git Setup

1. Open an elevated PowerShell console.

2. Run the following command within the console:

   ```powershell
   choco install git -y
   ```

3. Close and reopen the  elevated PowerShell console.

4. Perform the following two  commands - replace `<fullname>` with your name (whitespaces are ok), and `<email>` with your LiTec email address.

   ```powershell
   git config --global user.name "<fullname>"
   git config --global user.email "<email>"
   ```

   More information on a first setup can be found on: [First Time Git Setup](https://git-scm.com/book/en/v2/Getting-Started-First-Time-Git-Setup).

5. Your are NEARLY done!
6. Continue below to create and setup your github.com user account.

## GitHub Setup

> **GitHub, Inc.** is a provider of Internet hosting for software development and version control using Git. It offers the distributed version control and source code management (SCM) functionality of Git, plus its own features. It provides access control and several collaboration features such as bug tracking, feature requests, task management, continuous integration and wikis for every project. [^wikipedia_gh]
>
> [^wikipedia_gh]:https://en.wikipedia.org/wiki/GitHub


### Create a Github-User (LiTec)

1. Visit [Github.com](https://github.com), and enter your LiTec email address, and press the `Sign up for GitHub`-Button.
2. Create a good password! 
   - Info on password creation: [xkcd pasword strength](https://xkcd.com/936/) - a bit dated, but still valid!
   - Use pass phrases that are at a MINIMUM 16 (or even better 20+ letters long).
   - Use a Password Manager like [keepass](https://keepass.info/) or [Bitwarden](https://bitwarden.com/).
3. Choose a username:
   - **Student** usernames are set up of 4 letters of surname, two letters of forename and the last 6 digits of the students number.
     > Example: [Caroline Herschel](https://en.wikipedia.org/wiki/Caroline_Herschel) (student number 40146720210123) has the username `HersCa210123`.
   - **Teacher** usernames start with `litec-` and appends the four letter UPIS-Name (lower case).
     > Example: Peter Haslinger (upis "HASP") has the username `litec-hasp`.
4. Solve a puzzle to prove you are human.
5. Create Account.
6. Check your email for a validation code, and enter it in the next step.
7. Press `Continue`a few times (feel free not to answer any questions), and at last choose the free account.
8. DONE! You are now a member of the github community.
9. Also, read on, if you want to know:
   - What is git? (Version control system)
   - Basic usage of git
   - Basic usage of github

---

## WtH (What the Hell) is Git and GitHub?

> **UNFINISHED!** @tbd

At the moment visit the public repository [git-intro of HASP](https://github.com/litec-hasp/git-intro) to learn more about git and github.

---

