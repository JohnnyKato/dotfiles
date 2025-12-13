# variables
export EDITOR=nvim
export VISUAL=nvim
bindkey -v

# path
export PATH=$HOME/.local/bin:$PATH

# set dir fot zinit and plugins
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# download zinit if its not there
if [ ! -d "$ZINIT_HOME" ]; then
    mkdir -p "$(dirname $ZINIT_HOME)"
    git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi


# source/load zinit
source "${ZINIT_HOME}/zinit.zsh"

# fzf config
source <(fzf --zsh)
export FZF_DEFAULT_COMMAND='fd -t f --strip-cwd-prefix -H'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND='fd -t d --strip-cwd-prefix -H'
export FZF_DEFAULT_OPTS="--preview 'bat --color=always --style=numbers --line-range=:500 {}'"

# history
HISTFILE=$HOME/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
HISTDUP=erase

setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# completion style
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# plugins
zinit ice deph=1
zinit light zsh-users/zsh-syntax-highlighting
zinit light jeffreytse/zsh-vi-mode

# prompt theme
eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/config.toml)"

# completion and colors?
zmodload zsh/complist
autoload -U compinit && compinit
autoload -U colors && colors

zvm_after_init_commands+=('[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh')
