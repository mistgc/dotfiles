if status is-interactive
    fish_config prompt choose pythonista
    # Commands to run in interactive sessions can go here
end

source_dir $HOME/.config/fish/conf.d/app

set -U fish_greeting
set -gx EDITOR nvim
