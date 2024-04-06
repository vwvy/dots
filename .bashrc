export PS1='\[$(tput setaf 6)\]\W \[$(tput sgr0)\]\$ '

##################################
############# ALIAS ##############
##################################

alias ls='ls --color=auto --group-directories-first'
alias la='ls -a'
alias ll='ls -l'
alias lla='ls -al'
alias rm='rm -rf'
alias cp='cp -r'

alias dwm='cd ~/.config/dwm && ls'
alias blocks='cd ~/.config/dwm/dwmblocks && ls'
alias menu='cd ~/.config/dwm/dmenu && ls'
alias sterm='cd ~/.config/st/ && ls'
alias scripts='cd ~/.config/Scripts && ls'
alias mk ='rm -rf config.h && sudo make clean install'

alias fetch='clear && neofetch'

alias xr='sudo xbps-remove -R'
alias xq='xbps-query -Rs'
alias xO='sudo xbps-remove -O'
alias xo='sudo xbps-remove -o'
alias xi='sudo xbps-install'
alias xu='sudo xbps-install -Su'
alias xlist='xbps-query -l'
