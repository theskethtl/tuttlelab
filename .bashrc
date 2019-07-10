shopt -s checkwinsize

PS1="\s\v \[\e[36m\][\w]\[\e[m\]\\$ "
alias ls="ls --color=auto"

module load vmd
alias sqme="squeue -u $USER -o \"%.18i %.9P %.30j %.8u %.2t %.11M %.11L %.6D %.4C %R\" "
alias sqt="squeue -p teaching"
alias sqs="squeue -p standard"
alias spare_cores="sinfo -N --format='%N %1P %t %C' | sed -rn 's-(node[0-9]*) s (mix|idle) [0-9]*/([0-9]*)/[0-9]*/[0-9].*-\\1 \\3-p'"

if [[ $- == *i* ]]; then
	bind '"\e[A": history-search-backward'
	bind '"\e[B": history-search-forward'
fi

alias check_quota="mmdiskusage"
