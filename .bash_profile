export PS1="\u$ "

#   -----------------------------
#   SYSTEM
#   -----------------------------

alias editAlias='code ~/.bash_profile'
alias bashReset='source ~/.bash_profile'
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias showFullPath='defaults write com.apple.finder _FXShowPosixPathInTitle -bool YES; killall Finder'
alias hideFullPath='defaults write com.apple.finder _FXShowPosixPathInTitle -bool NO; killall Finder'
alias myip='curl icanhazip.com'
alias emptytrash='rm -rf ~/.Trash/*'
alias please="sudo"





#   -----------------------------
#   PERSONAL
#   -----------------------------

alias readVerse='~/Scripts/verses.sh'
alias wallpaper='~/Scripts/wallpapers.sh'
alias findpi='ping raspberrypi.local'
alias pioff='sudo shutdown -h now'
alias pirestart='sudo shutdown -r now'
alias dankConverter='node ~/Documents/Code\ Projects/Dank\ Converter/index.js ~/Documents/Personal/_Dankness/_Convert/WEBP ~/Documents/Personal/_Dankness/_Convert/_Converted'
alias grind='wallpaper 46 && spotify toggle shuffle && spotify play uri spotify:playlist:5gOBQXkDgsjUzvPMtN4SOX && slack status edit --text Focused --emoji :computer:'





#   -----------------------------
#   WEB DEVELOPMENT
#   -----------------------------

alias speedtest='node ~/Documents/Code\ Projects/Speed\ Test/speedtest'
alias serveThis='http-server . -o'
# alias newChrome='open -na "Google Chrome"'
alias fuckGit='rm -rf .git*'
alias getNuts='git clone https://github.com/theleewise/Nuts-and-Bolts.git && cd Nuts-and-Bolts && fuckGit'
alias getIgnore='curl -O "https://raw.githubusercontent.com/theleewise/Nuts-and-Bolts/master/.gitignore"'
alias getAlerts='wget https://raw.githubusercontent.com/theleewise/Nuts-and-Bolts/master/source/styles/objects/_alerts.scss'
# alias serverConfig='code /Applications/XAMPP/xamppfiles/etc/httpd.conf /private/etc/hosts'
# alias newLocalAlias='~/Scripts/New-Local-Alias.sh'





#   -----------------------------
#   WORK
#   -----------------------------

alias gettowork='afplay ~/Scripts/audio/dial-up.mp3 | open -a "Spotify" | open -a "ClickUp" | open -a "Slack"'
# /usr/bin/osascript -e "tell application \"Safari\""  -e "activate" -e "tell application \"System Events\"" -e "keystroke \"f\" using {control down, command down}" -e "end tell" -e "end tell"





#   -----------------------------
#   MISC
#   -----------------------------

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*


function dankit(){
    file=$(basename $1)
    mv $1 ~/Documents/Personal/_Dankness/_Convert/WEBP/$file && dankConverter;
}

function tumblit(){
    file=$(basename $1)
    mv $1 ~/Documents/Personal/_Dankness/_Tumbler/$file;
}