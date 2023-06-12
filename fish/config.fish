if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -U fish_greeting "   _____ __    ____  ________  __
  / ___// /   / __ \/_  __/ / / /
  \__ \/ /   / / / / / / / /_/ / 
 ___/ / /___/ /_/ / / / / __  /  
/____/_____/\____/ /_/ /_/ /_/   
                                 "

starship init fish | source
