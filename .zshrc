if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


export ZSH="$HOME/.oh-my-zsh"


# OPENGL DRIVERS
export LIBGL_DRIVERS_PATH=/run/opengl-driver/lib
export LD_LIBRARY_PATH=/run/opengl-driver/lib:$LD_LIBRARY_PATH

#ZSH_THEME="powerlevel10k/powerlevel10k"


if [[ -n "$TMUX" ]]; then
  export TERM="screen-256color"
fi

plugins=(git zsh-autosuggestions zsh-syntax-highlighting sudo web-search npm)

source $ZSH/oh-my-zsh.sh

alias nf="neofetch"
alias ff="fastfetch"
alias lb="lsblk"
alias nixinstall="sudo nix-env -iA"
alias nixrebuild="sudo nixos-rebuild switch"
alias cdconfig="cd ~/.config"
alias zshconfig="sudo nvim ~/.zshrc"
alias nixconfig="sudo nvim /etc/nixos/configuration.nix"
alias nvimconfig="nvim ~/.config/nvim/init.lua"
alias nixGens="nix-env --list-generations"
alias rmGens="sudo nix-env -p /nix/var/nix/profiles/system --delete-generations old"
alias nixClean="sudo nix-collect-garbage"
alias nas-server="nmap -sn 192.168.100.0/24 | grep 192.168.100.101"
alias nas-connect="sudo ssh joel@192.168.100.101"
alias cl="clear"
alias cdDow="cd Downloads"
alias cdObs="cd ~/Schreibtisch/ObsidianVaults"
alias cdhome="cd ~"
alias zug="sl"
alias cet="cd /etc/"
alias cdcod="cd ~/Schreibtisch/Coding"
alias ls="lsd"
alias htop="btop"
alias kys="systemctl poweroff"
alias time="tty-clock"
alias battery="acpi"
alias cdpr="cd ~/Schreibtisch/Projekte"
alias cdhypr="cd ~/.config/hypr"
alias open="xdg-open"



[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

eval "$(starship init zsh)"


