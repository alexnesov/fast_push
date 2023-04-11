# fast_push bruh', cuz we aint no time to loose
A script to make to make the process of add all content, commit, push in two letters.

1. Create a new file with the .sh extension using a text editor.
2. !! Make the file executable by running the command '```chmod +x fpush.sh'``` (replace myscript.sh with the name of your script file). Or you'll get a permission error when you'll try to execute your alais (happened to me)
3. Create an alias for the script by adding the following line to your Bash profile file (usually located at ~/.bashrc or ~/.bash_profile):

```alias myalias='/path/to/fpush.sh'```

I want to type ```fp``` and get my stuff pushed, so: 

```alias fp='/path/to/fpush.sh'```

4. Replace /path/to/myscript.sh with the full path to your script file.
5. Now you can run the script by typing myalias in the terminal. The script will prompt you to enter a commit message before committing and pushing the changes.






