
# 1. Choose where to save your history
HISTFILE=~/.zsh_history

# 2. Set massive limits so your history persists for years
HISTSIZE=50000
SAVEHIST=50000

# 3. Tell Zsh to ignore ONLY the clear commands
HISTORY_IGNORE="(clear|c|cls)"

# 4. Useful extras to keep history safe
setopt APPEND_HISTORY       # Append to the history file, never overwrite it
setopt HIST_IGNORE_SPACE
setopt SHARE_HISTORY        # Share history across all open Team Noctalia terminals
