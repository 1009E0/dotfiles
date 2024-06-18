export FZF_COMPLETION_TRIGGER='\'
export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix --hidden --follow --exclude .git'
export FZF_DEFAULT_OPTS='
      --bind=ctrl-t:top
      --bind ctrl-j:down,ctrl-k:up
      --preview "[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || (bat --color=always  {} || highlight -O ansi -l {} || bat {}) 2> /dev/null | head -500"
      '
export FZF_TMUX=1
export FZF_TMUX_HEIGHT='80%'
