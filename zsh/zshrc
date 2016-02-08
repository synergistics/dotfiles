autoload -Uz compinit
compinit
autoload -U promptinit
promptinit
autoload -U colors
colors

source ~/dotfiles/zsh/.zsh/history.zsh
source ~/dotfiles/zsh/.zsh/exports.zsh
source ~/dotfiles/zsh/.zsh/aliases.zsh
source ~/dotfiles/zsh/.zsh/prompt.zsh

setopt appendhistory extendedglob nomatch notify share_history
unsetopt autocd beep
bindkey -v
zstyle :compinstall filename ~/.zshrc

zstyle ':completion:*' menu select 
setopt completealiases
setopt sh_word_split

