### Difference between bashrc and bash_profile
1. bash_profile runs only once after login or session begins
2. whereas the bashrc always runs for new terminal

# Change of terminal view
parse_git_branch() {
	# git branch lists all branches in your current Git repository and marks the current branch with a *.
	# 2> /dev/null redirects any error messages (like if you're not in a Git repository) to /dev/null, effectively hiding them.
	# grep '^*' filters this list to only the line with the current branch (the one starting with *).
	# colrm 1 2 removes the first two characters (* ), leaving just the branch name.
    git branch 2> /dev/null | grep '^*' | colrm 2 2
}

get_conda_env() {
	#run this to take effect: conda config --set changeps1 False
    if [ -n "$CONDA_DEFAULT_ENV" ]; then
        echo "($CONDA_DEFAULT_ENV)"
    fi
}

# export PS1="\[\033[36m\]\u\[\033[00m\]@\[\033[33m\]\h\[\033[00m\]:\w\[\033[35m\]\$(get_conda_env)\[\033[00m\] \[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "
export PS1="\[\033[36m\]\u\[\033[00m\]@\[\033[33m\]\h\[\033[00m\]:\w\[\033[32m\]\$(parse_git_branch)\[\033[00m\]$ "
