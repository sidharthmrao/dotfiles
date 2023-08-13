if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -U fish_greeting "   _____ __    ____  ________  __
  / ___// /   / __ \/_  __/ / / /
  \__ \/ /   / / / / / / / /_/ / 
 ___/ / /___/ /_/ / / / / __  /  
/____/_____/\____/ /_/ /_/ /_/   
                                 "

alias pycharm='$HOME/Applications/pycharm-2023.2/bin/pycharm.sh'
fish_add_path ~/.cargo/bin
fish_add_path ~/bin

set BROWSER /usr/bin/google-chrome-stable

starship init fish | source
