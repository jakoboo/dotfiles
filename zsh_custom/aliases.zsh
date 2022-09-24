################################################################################
# Utility
################################################################################
# Enable aliases to be sudo’ed
alias sudo='sudo '

alias reloaddns="dscacheutil -flushcache && sudo killall -HUP mDNSResponder"
alias copyssh="pbcopy < $HOME/.ssh/id_ed25519.pub"
alias reloadshell="source $HOME/.zshrc"
alias ll="gls -AhlFo --color --group-directories-first"
alias c="clear"

# Get macOS Software Updates, and update Homebrew, npm, and their installed packages
alias update='sudo softwareupdate -i -a; brew update; brew upgrade; brew cleanup; npm install npm -g; npm update -g'

# Empty the Trash on all mounted volumes and the main HDD.
# Also, clear Apple’s System Logs to improve shell startup speed.
# Finally, clear download history from quarantine. https://mths.be/bum
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl; sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'delete from LSQuarantineEvent'"

# Directories
alias desktop="cd ~/Desktop"
alias downloads="cd ~/Downloads"
alias dotfiles="cd $DOTFILES"
alias library="cd $HOME/Library"
alias projects="cd $HOME/Projects"

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"

################################################################################
# Development
################################################################################
# Fresh install of node packages
alias nfresh="rm -rf node_modules/ package-lock.json && npm install"

# Git
alias gst="git status"
alias gb="git branch"
alias gc="git checkout"
alias gl="git log --oneline --decorate --color"
alias commit="git add . && git commit -m"
alias amend="git add . && git commit --amend --no-edit"
alias diff="git diff"
alias force="git push --force"
alias nuke="git clean -df && git reset --hard"
alias pull="git pull"
alias push="git push"
alias resolve="git add . && git commit --no-edit"
alias pop="git stash pop"
alias stash="git stash -u"
alias unstage="git restore --staged ."
alias wip="commit wip"