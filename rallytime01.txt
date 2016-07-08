
It's good git practice to make discrete changes in individual branches. So what you did here was you made your changes directly against your develop branch, pushed up the commits, and made a pull request. This worked, and was fine, but as you saw, each commit you made and pushed up went into the same pull request. What is better to do is to:
 -	checkout the main branch you want to make a change against (let's use develop as an example): git checkout develop 
 -	from this main branch, create a new branch: git checkout -b fix-something (this command simultaneously creates a new branch off of your local copy of develop named fix-something and checks it out. If you run git branch you'll see an indication that you're working off of this new branch)
 -	Now that you're on a new branch to work on changes, edit your files and make your necessary commits.
 -	Once you're satisfied with the state of your fix, push your commits up to github git push <your-upstream-fork> fix-something 
 -	Now, you can create a new pull request with the changes you just made. The fix-something branch should only contain commits relevant to that fix. 
 -	If you want to fix a different bug/issue or implement a new feature, go back to the first step and create a new branch off of develop. 

