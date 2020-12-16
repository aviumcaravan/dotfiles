HISTFILE=~/.zsh_history
HISTSIZE=16384
SAVEHIST=16384

autoload -Uz colors
colors

autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst

alias ls='ls -laG'
alias grep='grep --color=auto'

PS1='%B%F{yellow}%w %D{%b %Y}%t%f %F{cyan}%n%f on %F{magenta}%m%f %F{blue}%~%f%F{green}${vcs_info_msg_0_}%f 
%F{red}∑%f%b '
