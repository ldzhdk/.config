#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=always'
alias la='ls -A'

alias grep='grep --color=always'

alias vim='nvim'

alias config='cd ~/.config'

PS1='[\u@\h \W]\$ '
