#
# zsh dotfile
# ~/.zshrc
# Name: nil
#

# Path to your oh-my-zsh configuration.
ZSH=/usr/share/oh-my-zsh/

# Theme.
ZSH_THEME="nil"

# oh-my-zsh config options {{{
# -----------------------------------------------------------------------------

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# }}}

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git fasd)

source $ZSH/oh-my-zsh.sh


# Allow auto-correct for git commands.
git config --global help.autocorrect 1

# Vi(m) baby.
bindkey -v

# Uh, please work like Vim (or any sane person), not like Vi.
bindkey "^?"    backward-delete-char   # Backspace
bindkey '^[[3~' delete-char            # Delete
bindkey -a u undo
bindkey -a '^R' redo
bindkey '^[[Z' reverse-menu-complete
# I don't actually use these ones, but at least it's more Vim behavior.
bindkey "^[[7~" vi-beginning-of-line   # Home
bindkey "^[[8~" vi-end-of-line         # End
bindkey -a 'gg' beginning-of-buffer-or-history
bindkey -a 'g~' vi-oper-swap-case
bindkey -a G end-of-buffer-or-history
bindkey "^P" vi-up-line-or-history
bindkey "^N" vi-down-line-or-history

# My custom Vim commands.
bindkey "^J" vi-down-line-or-history
bindkey "^K" vi-up-line-or-history

# Oh my alias commands.
alias audio-toggle="bash ~/.config/nil/audio-toggle"
alias bd="bg && disown"
alias p="sudo pacman"
alias pl="comm -23 <(pacman -Qeq|sort) <(pacman -Qgq base base-devel|sort)"
alias poweroff="sudo poweroff"
alias reboot="sudo reboot"
alias so="source ~/.zshrc"

# Applications
l() { f -e libreoffice "$@" & }
m() { f -e mplayer2 "$@" & }
z() { f -e zathura "$@" & }
alias nitrogen="nitrogen &"
alias un="urxvt -name nil"
alias v="f -e gvim -B viminfo"

# le git.
alias ga="git add -f"
alias gc="git commit -a -m"
alias gp="git push -u origin master"
alias gcp="git commit -a -m '~' && git push -u origin master"
alias gr="git rm --cached"
alias gs="git show --name-only"

# Environment variables.
export EDITOR=gvim
export ZSH_CUSTOM=~/.config/nil/oh-my-zsh-custom
