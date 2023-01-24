# start x server
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then 
  exec startx 2> ~/.cache/wm-log.txt  # write errors to file 
fi

source $HOME/.oh-my-zsh/custom/plugins/auto-pair/autopair.zsh

# ZSH_THEME_RANDOM_CANDIDATES=("archcraft-dwm-1" "archcraft-dwm-2" "archcraft-dwm-3")       # random candidates
# ZSH_THEME_RANDOM_QUIET=true                                                               # disable notification on theme switching
ZSH_THEME="frontcube"                                                                        # set theme

# start autopair plugin
autopair-init       

# PLugins 
plugins=( 
    zsh-autosuggestions
    zsh-syntax-highlighting 
    web-search     
    sudo
    z # (fuck russia)
    fancy-ctrl-z # (fuck russia btw)
    colored-man-pages
    copypath
    exa-zsh
)

source $HOME/.oh-my-zsh/oh-my-zsh.sh

# Aliases
alias nf="neofetch"
