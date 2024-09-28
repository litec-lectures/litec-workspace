---
author: hasp
date: 20240928
version: 0.2
---

# How to Migrate Git Repository with Branches and Commit History

If you want to migrate git repositories from one account to another (e.g. from a GitHub organization like `litec-SEW2` to your **personal** GitHub account) perform the following steps:

1. **Mirror the repository** to your local machine:

   ```bash
   git clone --mirror https://url-of-the-source-repo.git
   ```

   The above command would create a directory with `repo-name.git` and mirrors all branches, tags and commit history.

2. **Create a new repository** on your private GitHub account with the same name (not required though) and copy the repository URL something like: `https://url-of-the-destination-repo.git`

3. **Set the new remote repository URL** buy running the following command from inside your git repo folder:

   ```bash
   cd repo-name.git 
   git remote set-url --push origin https://url-of-the-destination-repo.git
   ```

4. **Push the repository to the destination**

   ```bash
   git push --mirror
   ```

5. DONE! (If you want delete the local folder - it is no longer needed)

---

## Links / Sources

- <https://www.atlassian.com/git/tutorials/git-move-repository>
- <https://datanextsolutions.com/blog/how-to-migrate-git-repository-with-branches-and-commit-history/>
