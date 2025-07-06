#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='\[\e[1;31m\][\u@\h]\[\e[0m\] \[\e[1;37m\]\$\[\e[0m\] '

#####################################################################

#FASTFETCH
fastfetch
echo""

#COMMAND MENU
alias bashrc='sudo nvim ~/.dotfiles/.bashrc'
alias starth='hyprland'
alias mountusb='udisksctl mount -b /dev/sdd1'
alias ejectusb='udisksctl unmount -b /dev/sdd1'
alias mountsdb3='udisksctl mount -b /dev/sdb3'
alias mountsda2='udisksctl mount -b /dev/sda2'
alias mountsdcard='udisksctl mount -b /dev/sdc1'
alias confhland='sudo nvim ~/.dotfiles/.config/hypr/hyprland.conf'
alias cleansystem='sudo pacman -Rns $(pacman -Qtdq)'
alias run='python main.py'
alias virbox='env -u WAYLAND_DISPLAY VirtualBox'

clear(){
command clear
fastfetch
echo""
}


