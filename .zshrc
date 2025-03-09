ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

if [ ! -d "$ZINIT_HOME" ]; then
  mkdir -p "$(dirname $ZINIT_HOME)"
  git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

source "${ZINIT_HOME}/zinit.zsh"

zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions

autoload -U compinit && compinit

HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=5000
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

alias cd='z'
alias ls='lsd'
alias cat='bat'
alias grep='grep --color=always'
alias retor="sudo systemctl restart tor"
alias rago='radiogogo'

eval "$(zoxide init zsh)"
eval "$(oh-my-posh init zsh --config ~/.pt/base.toml)"
eval $(thefuck --alias)

export GTK_IM_MODULE=ibus
export XMODIFIRES=@im=ibus
export QT_IM_MODULE=ibus
