#   -----------------------------
#   ENVIRONMENT VARIABLES
#   -----------------------------

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

#   -----------------------------
#   SYSTEM
#   -----------------------------

alias editalias='code ~/.zshrc'
alias bashreset='source ~/.zshrc'
alias showfiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hidefiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias showfullpath='defaults write com.apple.finder _FXShowPosixPathInTitle -bool YES; killall Finder'
alias hidefullpath='defaults write com.apple.finder _FXShowPosixPathInTitle -bool NO; killall Finder'
alias myip='curl icanhazip.com'
alias trashday='rm -rf ~/.Trash/*'
alias please="sudo"





#   -----------------------------
#   PERSONAL
#   -----------------------------

alias readverse='~/Scripts/verses.sh'
alias wallpaper='~/Scripts/wallpapers.sh'
alias findpi='ping raspberrypi.local'
alias pioff='sudo shutdown -h now'
alias pirestart='sudo shutdown -r now'
alias grind='wallpaper 46 && spotify toggle shuffle && spotify play uri spotify:playlist:5gOBQXkDgsjUzvPMtN4SOX && slack status edit --text Focused --emoji :computer: --expire=30'
alias newchrome='open -na "Google Chrome"'
alias dankit='node ~/Documents/Code\ Projects/Dank\ Converter/index.js'

function tumblit(){
    file=$(basename $1)
    mv $1 ~/Documents/Personal/_Dankness/_Tumbler/$file;
}





#   -----------------------------
#   WEB DEVELOPMENT
#   -----------------------------

# Version Control
alias fuckgit='rm -rf .git*'
alias gitundo='git reset --soft HEAD~1';
alias nvminit='node -v > .nvmrc'

# Commonly Used Codebases
alias getnuts='git clone https://github.com/theleewise/Nuts-and-Bolts.git && cd Nuts-and-Bolts && fuckGit'
alias getignore='curl -O "https://raw.githubusercontent.com/theleewise/Nuts-and-Bolts/master/.gitignore"'
alias getalerts='wget https://raw.githubusercontent.com/theleewise/Nuts-and-Bolts/master/source/styles/objects/_alerts.scss'

# Local Environment
alias serve='http-server . -o'
# alias serverConfig='code /Applications/XAMPP/xamppfiles/etc/httpd.conf /private/etc/hosts'
# alias newLocalAlias='~/Scripts/New-Local-Alias.sh'





#   -----------------------------
#   WORK
#   -----------------------------

alias gettowork='afplay ~/Scripts/audio/dial-up.mp3 | open -a "Spotify" | open -a "ClickUp" | open -a "Slack" | open -a "Mail"'
alias cdwork='cd ~/Documents/Work/VACI'
alias lunch='slack status edit --text Lunch --emoji :hamburger: --expire=60 && slack presence away'
alias sshvaci='ssh -i ~/.ssh/id_rsa -p 17177 vaclaims@node3071.myfcloud.com'
# /usr/bin/osascript -e "tell application \"Safari\""  -e "activate" -e "tell application \"System Events\"" -e "keystroke \"f\" using {control down, command down}" -e "end tell" -e "end tell"





#   -----------------------------
#   MISC
#   -----------------------------

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/leewise/Documents/Work/VACI/contacts-sync/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/leewise/Documents/Work/VACI/contacts-sync/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/leewise/Documents/Work/VACI/contacts-sync/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/leewise/Documents/Work/VACI/contacts-sync/node_modules/tabtab/.completions/sls.zsh
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /Users/leewise/Documents/Work/VACI/contacts-sync/node_modules/tabtab/.completions/slss.zsh ]] && . /Users/leewise/Documents/Work/VACI/contacts-sync/node_modules/tabtab/.completions/slss.zsh
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/leewise/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/leewise/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/leewise/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/leewise/google-cloud-sdk/completion.zsh.inc'; fi
