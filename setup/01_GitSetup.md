---
author: hasp
date: 20210919
topics: setup, win, git, github
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

---

## Personal Access Token (PAT) for GitHub

**Ok, ok, I confess - I lied!**

You are not done yet! For external access to your github repositories you need to setup a PAT (Personal Access Token) for authentication.

1. (Re)visit github.com (sign in - if you aren't already), and click on the upper right corner on your avatar.
2. Choose `Settings`.
3. On the left menu panel you find the entry `Developer settings` (click that), and then choose `Personal access token`.
4. Click `Generate new token`.
5. Give the token a name like `Auth-Token`, set Expiration to 1 year (choose `custom` and select date 365 day in the future).
6. Just click on the `repo` checkbox - that's sufficient for your first PAT - which will also select all repo access checkboxes right below.
7. Scroll down and click `Generate Token`.
8. Copy the generated cryptic token string (it starts like `ghp_<lost of letters and numbers>`) and store it in your password safe (or for direct use in your clipboard). You won't have access to that string later, so donn't loose it. However, you can generate new tokens any time you want.

Ok, lets use the generated token - it will be used everytime you copy data from github to your computer (clone, fetch, pull), or send data to github (push). But you need to store it just once in the Windows Credential Manager. We will show you how:

1. Open a powershell command line (need'nt be elevated). And type the following commands:

   ```powerhsell
   cd ~
   mkdir repos
   cd repos
   git clone https://github.com/litec-lectures/litec-workspace.git
   ```

   Short explanation:
   - first command `cd ~` (change directory) switches you to your home directory
   - 2nd command `mkdir` (make directory) creates a new folder in your home directory called `repos` (short for repositories)
   - 3rd command `cd repos` switches to the repos directory
   - 4th commanf `git clone ...` copies/clones this repository you are currently looking at to your computer in the folder `repos`

2. After the last step a small github window should pop up asking for your credentials, and you fill out the empty field with your personal access token (hopefully still in the clipboard!). If you no longer have your token, you just need to create a new one (follow steps above).
3. Finally! Now we are really DONE!
4. Also, read on, if you want to know:
   - What is git? (Version control system)
   - Basic usage of git
   - Basic usage of github

---

## WtH (What the Hell) is Git and GitHub?

For in-depth information on git and github visit the public repository [HASP's git-intro](https://github.com/litec-hasp/git-intro) - a bit dated, but still ok.

A german short explantion: an absolutely [*MINI* cheat sheet](./../cheat-sheets/Git-MiniCheatSheet[ger].md) - this is just for short reminders on what to do on your daily routine.

---
