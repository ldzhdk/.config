# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='LC_COLLATE=C ls -A --group-directories-first --color=always'
alias la='ls -la --color=always'

alias grep='grep --color=always'

alias vim='nvim'

alias config='cd ~/.config'

PS1='[\u@\h \W]\$ '

eval "$(starship init bash)"
