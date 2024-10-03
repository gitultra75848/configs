# funny zsh config..!

export EDITOR='nvim'

ZSH_THEME="robbyrussell"

export PATH=$PATH:~/.cargo/bin

source ~/.venv/bin/activate

eval "$(fzf --zsh)"

# Created by `pipx` on 2024-04-28 18:59:05
export PATH="$PATH:/Users/Dusten/.local/bin"

export BAT_THEME="Catppuccin Macchiato"

export MUSIC_DIR="~/Downloads/Downloaded Music"

alias aquarium="python3 ~/Aquarium/aquarium.py"

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

eval "$(starship init zsh)"

eval "$(atuin init zsh)"

eval $(thefuck --alias)

export EDITOR='nvim'

export PLAYER='mpv'

alias oops="fuck"

alias w-pass="wifi-password"

alias home="cd ~"

alias sketchybar-vertical="mv ~/.config/sketchybar/sketchybarsetupbackup-vertical/sketchybarrc ~/.config/sketchybar/ && mv ~/.config/sketchybar/sketchybarsetupbackup-vertical/plugins/ ~/.config/sketchybar/"

alias sketchybar-main="mv ~/.config/sketchybar/sketchybarsetupbackup-main/sketchybarrc ~/.config/sketchybar/ && mv ~/.config/sketchybar/sketchybarsetupbackup-main/plugins/ ~/.config/sketchybar/ && mv ~/.config/sketchybar/sketchybarsetupbackup-main/icons.sh ~/.config/sketchybar/ && mv ~/.config/sketchybar/sketchybarsetupbackup-main/colors.sh ~/.config/sketchybar/ && mv ~/.config/sketchybar/sketchybarsetupbackup-main/environment.sh ~/.config/sketchybar/"

alias sketchybar-neutonfoo="mv ~/.config/sketchybar/sketchybarsetupbackup-neutonfoo/sketchybarrc ~/.config/sketchybar/ && mv ~/.config/sketchybar/sketchybarsetupbackup-neutonfoo/plugins/ ~/.config/sketchybar/ && mv ~/.config/sketchybar/sketchybarsetupbackup-neutonfoo/sketchybarrc-laptop ~/.config/sketchybar/ && mv ~/.config/sketchybar/sketchybarsetupbackup-neutonfoo/sketchybarrc-desktop ~/.config/sketchybar/ && mv ~/.config/sketchybar/sketchybarsetupbackup-neutonfoo/plugins-laptop/ ~/.config/sketchybar/ && mv ~/.config/sketchybar/sketchybarsetupbackup-neutonfoo/plugins-desktop/ ~/.config/sketchybar/" 

alias sketchybar-start="brew services start sketchybar"

alias sketchybar-stop="brew services stop sketchybar"

alias sketchybar-restart="brew services restart sketchybar"

alias sketchybar-vertical-backup="mv ~/.config/sketchybar/sketchybarrc ~/.config/sketchybar/sketchybarsetupbackup-vertical/ && mv ~/.config/sketchybar/plugins/ ~/.config/sketchybar/sketchybarsetupbackup-vertical/"

alias sketchybar-main-backup="mv ~/.config/sketchybar/sketchybarrc ~/.config/sketchybar/sketchybarsetupbackup-main/ && mv ~/.config/sketchybar/plugins/ ~/.config/sketchybar/sketchybarsetupbackup-main/ && mv ~/.config/sketchybar/icons.sh ~/.config/sketchybar/sketchybarsetupbackup-main/ && mv ~/.config/sketchybar/environment.sh ~/.config/sketchybar/sketchybarsetupbackup-main/ && mv ~/.config/sketchybar/colors.sh ~/.config/sketchybar/sketchybarsetupbackup-main/"

alias sketchybar-neutonfoo-backup="mv ~/.config/sketchybar/plugins/ ~/.config/sketchybar/sketchybarsetupbackup-neutonfoo/ && mv ~/.config/sketchybar/plugins-laptop/ ~/.config/sketchybar/sketchybarsetupbackup-neutonfoo/ && mv ~/.config/sketchybar/plugins-desktop/ ~/.config/sketchybar/sketchybarsetupbackup-neutonfoo/ && mv ~/.config/sketchybar/sketchybarrc ~/.config/sketchybar/sketchybarsetupbackup-neutonfoo/ && mv ~/.config/sketchybar/sketchybarrc-laptop ~/.config/sketchybar/sketchybarsetupbackup-neutonfoo/ && mv ~/.config/sketchybar/sketchybarrc-desktop ~/.config/sketchybar/sketchybarsetupbackup-neutonfoo/"

alias catpfetch="python3 ~/catpfetch.py"

alias next="nowplaying-cli next"

alias back="nowplaying-cli previous"

alias playpause="nowplaying-cli togglePlayPause"

alias play="nowplaying-cli play"

alias pause="nowplaying-cli pause"

alias nowplaying="nowplaying-cli get title artist"

alias youtube="mov-cli -s youtube"

alias clock="tock -s -c -C 7"

alias ytd="yt-dlp"

alias music="open -a 'Music'"

alias ubuntu="open -a 'Docker Desktop' && docker start ubuntulinux && docker exec -it ubuntulinux /bin/bash"

alias ls="x ls"

export PATH=$PATH:/Users/Dusten/.spicetify

[ ! -f "$HOME/.x-cmd.root/X" ] || . "$HOME/.x-cmd.root/X" # boot up x-cmd.
