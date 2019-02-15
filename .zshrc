bindkey "^[[2~" yank

bindkey "^[[3~" delete-char

bindkey "^[[1~" beginning-of-line

bindkey "^[[4~" end-of-line

bindkey "^[[5~" up-line-or-history

bindkey "^[[6~" down-line-or-history

_compdir=/usr/share/zsh/functions/Core

autoload -U colors
colors
export PS1="[%{$fg[green]%}%n@%{$fg[red]%}%m %{$fg[cyan]%}%2~%{$fg[default]%}]%(!.#.$) "
RPROMPT="%{$fg[green]%}[%T]"
export PATH=$PATH:/sbin:/usr/sbin
setopt no_prompt_sp
zstyle ':completion:*' menu select=2
alias sd='sudo'
alias sdsquid='sudo vim /etc/squid/squid.conf'

bindkey -s ^xs '\C-e"\C-asu -c "'
HISTFILE=~/.zhistory
SAVEHIST=5000
HISTSIZE=5000
setopt  APPEND_HISTORY
setopt  HIST_REDUCE_BLANKS

autoload -U compinit promptinit
compinit
promptinit;

