# shell-scripting and GIT

* git clone URL                      --> clone the code
* git add FILE-NAME                  --> to add files to staging area
* git commit -m "meaningful message" --> commit to local repo
* git push origin master             --> push changes to central repo

# steps to clone Repo and make a commit

* git clone https://github.com/suryakiran12/Learning-Repos.git
* cd Learning-Repos/
* mkdir shell-scripting
* cd shell-scripting/
* vi README.MD
* git branch -M master
* git add README.MD
* git commit -m "First time commit"
* git remote set-url https://github.com/suryakiran12/Learning-Repos.git
* git push -u origin master
   * Git push prompts for username and password
   * give username and password to push the changes to master

# SSH Authentication

1. Add publickey in github account(under SSH and GPG keys)
2. create a file called config in .ssh folder
  
Add below in config file

   ```
   # This is for Personal Account
   Host github.com-Personal
   HostName github.com
   User git
   IdentityFile ~/.ssh/Internal/<private-key-file-name>

   #This is for work Account
   Host github.com-Work
   HostName github.com
   User git
   IdentityFile ~/.ssh/Internal/<private-key-file-name>

   ```

# If you have existing folder, how can you push to GitHub?

1. git init (Run this command inside the folder)
2. create repo in github server
3. connect git local repo and central repo through
      * git remote add orign [make-sure-you-use-ssh-url]
      * git remote add origin git@github.com:suryakiran12/Learning-Repos.git