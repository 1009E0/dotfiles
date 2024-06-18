alias install='sudo pacman -S'
alias upgrade='sudo pacman -Syu'
alias cd='z'
alias vim='nvim'
alias ls='exa'
alias l='ls -l'
alias la='ls -la'
alias tree='exa -T'
alias setproxy="export https_proxy=http://127.0.0.1:7897; http_proxy=http://127.0.0.1:7897; all_proxy=socks5://127.0.0.1:7897; echo 'Set proxy successfully'"
alias unsetproxy="unset http_proxy; unset https_proxy; unset all_proxy; echo 'Unset proxy successfully'"
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
