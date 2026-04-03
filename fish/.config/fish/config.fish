if status is-interactive
    fish_config prompt choose pythonista
    # Commands to run in interactive sessions can go here
end

source_dir $HOME/.config/fish/conf.d/app

fish_add_path $HOME/.deno/bin/
fish_add_path $HOME/.local/bin/
fish_add_path $HOME/.local/share/nvim/mason/bin/

set -U fish_greeting
set -gx EDITOR nvim

# Added by LM Studio CLI (lms)
set -gx PATH $PATH /home/gc/.lmstudio/bin
# End of LM Studio CLI section

set -gx XDG_CONFIG_HOME $HOME/.config
set -gx XDG_CACHE_HOME $HOME/.cache
set -gx XDG_DATA_HOME $HOME/.local/share
set -gx XDG_STATE_HOME $HOME/.local/state

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# opencode
fish_add_path /home/gc/.opencode/bin
