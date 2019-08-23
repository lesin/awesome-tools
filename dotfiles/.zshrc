export PATH="$HOME/.bin:$PATH"
source /Users/lesin/.asdf/asdf.sh
source "$HOME/.slimzsh/slim.zsh"
source ~/.zsh-nvm/zsh-nvm.plugin.zsh


# Universal
alias c='clear'
alias .='echo $PWD'
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias wget='wget -c'
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g' |less"
alias showfiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hidefiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# Shortcuts
alias irbs="irb --simple-prompt"
alias srspec="spring rspec"
alias ngrok="~/Applications/ngrok"
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias getsong='youtube-dl -f 140'

# The ubiquitous 'll': directories first, with alphanumeric sorting:
alias ll='ls -lvF'
alias lm='ll |more'        #  Pipe through 'more'
alias lr='ll -R'           #  Recursive ls.
alias la='ll -A'           #  Show hidden files.

# Colorize the grep command output for ease of use (good for log files)##
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# confirmation #
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'

# Get External IP / local IPs
alias ip="curl ipinfo.io/ip"
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"

# Docker
alias dc="docker-compose"
alias dcr="docker-compose run --rm"
alias dps="docker ps --format \"table {{.ID}}\t{{.Names}}\t{{.Status}}\""
alias ddf="docker system df"

# Git
alias gs='git status'
alias gc='git commit'
alias gcm='git commit -m'
alias gcam='git commit --amend --no-edit'
alias ga='git add'
alias go='git checkout'
alias gb='git branch'
alias gd='git diff'
alias gdc='git diff --cached'
alias grsoft='git reset --soft HEAD^'
alias gl='git log --pretty=oneline'
alias gl5='git log --pretty=format:"%h - %s" -5'
alias gp='git push origin $(current_branch)'
alias gpf!='git push --force-with-lease'
alias gpr='git pull --rebase origin $(current_branch)'
alias gdel="git branch --merged master | grep -v '^[ *]*master$' | xargs git branch -d"

# use current branch
function current_branch() {
   ref=$(git symbolic-ref HEAD 2> /dev/null) || \
   ref=$(git rev-parse --short HEAD 2> /dev/null) || return
   echo ${ref#refs/heads/}
 }
#no autocorrection
unsetopt correct_all
setopt correct

export PS1='> '
