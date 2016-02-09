export PATH="$HOME/.node/bin:$PATH"
export PATH="$PATH:/Users/sujith/coding/android/sdk/android-sdk-macosx/platform-tools"
export PATH="$PATH:/Users/sujith/coding/android/sdk/android-sdk-macosx/tools"
export PATH="/usr/local/mysql/bin:$PATH"
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi
export HOMEBREW_GITHUB_API_TOKEN=dcfcb1ad0ced0cae7ce1c5debfcd18984ee8a13e
export USE_GLOBAL_ADK=t
export POWERLINE_CONFIG_COMMAND=powerline-config
### =========== My Aliases =============== ###
alias dcount="figlet $(ls ~/Downloads/ | wc -l)"
if [ -f ~/.aliases ]; then
. ~/.aliases
fi
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# for powerline 
if [ -f `which powerline-daemon` ]; then
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  . /usr/local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh
fi
# end-of powerline
ssh() {
    if [ "$(ps -p $(ps -p $$ -o ppid=) -o comm=)" = "tmux" ]; then
        tmux rename-window "$(echo $* | cut -d . -f 1)"
        command ssh "$@"
        tmux set-window-option automatic-rename "on" 1>/dev/null
    else
        command ssh "$@"
    fi
}
