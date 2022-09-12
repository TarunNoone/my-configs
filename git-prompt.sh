# Colors list in this website
# https://man7.org/linux/man-pages/man5/dir_colors.5.html

PS1='\[\033]0;$TITLEPREFIX:$PWD\007\]\n'	# set window title
PS1="$PS1"'\[\033[32m\]┌──(' 			# green color
PS1="$PS1"'\[\033[34m\]\u㉿\h'			# blue
PS1="$PS1"'\[\033[32m\])-['			# green
PS1="$PS1"'\[\033[0m\]\w'                 	# white
PS1="$PS1"'\[\033[32m\]]\n'
PS1="$PS1"'\[\033[32m\]└─'                	# needs to be separate line.
						# This is because it loses color when resizing window
if test -z "$WINELOADERNOEXEC"
then
	GIT_EXEC_PATH="$(git --exec-path 2>/dev/null)"
	COMPLETION_PATH="${GIT_EXEC_PATH%/libexec/git-core}"
	COMPLETION_PATH="${COMPLETION_PATH%/lib/git-core}"
	COMPLETION_PATH="$COMPLETION_PATH/share/git/completion"
	if test -f "$COMPLETION_PATH/git-prompt.sh"
	then
		. "$COMPLETION_PATH/git-completion.bash"
		. "$COMPLETION_PATH/git-prompt.sh"
		PS1="$PS1"'\[\033[36m\]'  # change color to cyan
		PS1="$PS1"'`__git_ps1`'   # bash function
	fi
fi

PS1="$PS1"'\[\033[34m\] $ '		# prompt: always $
PS1="$PS1"'\[\033[0m\]'		# change color back to white
