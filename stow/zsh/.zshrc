#=======================================
# PLUGIN MANAGER
#=======================================
eval "$(oh-my-posh init zsh --config ~/.config/oh-my-posh/config.toml)" 

# Generate cache if missing (or after updating oh-my-posh / your theme)

if command -v sheldon >/dev/null 2>&1; then
    eval "$(sheldon source)"
fi

eval "$(zoxide init zsh --cmd cd)"
 

if [[ ":$FPATH:" != *":/home/ashwin/.zsh/completions:"* ]];
   then export FPATH="/home/ashwin/.zsh/completions:$FPATH";
fi
# Zsh configuration

#=======================================
# INIT
#=======================================
eval "$(zoxide init zsh)"
setopt interactivecomments
config="$HOME/.config/zsh/"
src=(
  "$config/alias.sh"
  "$config/func.sh"
  # "$config/prompt.zsh"
  "$config/matlab.sh"
  "$config/plugins.zsh"
  "$config/History.zsh"
)

src_if_exists() {
    [[ -r "$1" ]] && source "$1"
}

for file in "${src[@]}"; do
    src_if_exists "$file"
done 

#=======================================
# ENVIRONMENT
#=======================================
export TERM=xterm
export TERMINFO="$HOME/.pixi/envs/default/share/terminfo"

#=======================================
# EDITOR
#=======================================
export EDITOR=nvim
export VISUAL=nvim

#=======================================
# PATHS
#=======================================
path+=(
    "$HOME/.pixi/bin"
    "$HOME/.local/bin"
    "$HOME/.cargo/bin"
    "/usr/local/bin"
    "/usr/bin"
)
source /usr/share/nvm/init-nvm.sh



