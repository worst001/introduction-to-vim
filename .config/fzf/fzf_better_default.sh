export FZF_DEFAULT_OPTS='--preview "[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || (highlight -O ansi -l {} || ccat --color=always {} || cat {}) 2> /dev/null | head -2000"'
# export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
# export FZF_DEFAULT_COMMAND="rg --files --hidden -g'!.git'"
export FZF_COMPLETION_TRIGGER='\'
export FZF_TMUX_HEIGHT='80%'
export FZF_PREVIEW_COMMAND='[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || (highlight -O ansi -l {} || ccat --color=always {} || cat {}) 2> /dev/null | head -2000'
source ~/.config/zsh/key-bindings.zsh
source ~/.config/zsh/completion.zsh
