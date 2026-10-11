#=======================================
# PATHS
#=======================================
path+=(
    "$HOME/.pixi/bin"
    "/usr/bin"
    "/usr/local/bin"
    "$HOME/.cargo/bin"
)

#=======================================
# FUNCTIONS
#=======================================

# --------------------------------------
# Pixi shell helpers
# --------------------------------------
pxa() {
    export _OLD_PIXI_PATH="$PATH"
    eval "$(pixi shell-hook)"
    echo "$XDG_DATA_DIRS"
}

pxd() {
    if [[ -n "$_OLD_PIXI_PATH" ]]; then
        export PATH="$_OLD_PIXI_PATH"
        unset _OLD_PIXI_PATH
    else
        PATH=$(echo "$PATH" | tr ':' '\n' | grep -v '\.pixi' | paste -sd ':' -)
    fi

    unset PIXI_ENVIRONMENT_NAME PIXI_PROJECT_NAME CONDA_PREFIX
    hash -r
}
# --------------------------------------
# General utilities
# --------------------------------------
mkcd() {
    mkdir -p "$1" && cd "$1"
}

mkagent() {
    eval "$(ssh-agent -s)"
    ssh-add "$HOME/.ssh/id_ed25519"
}

git-to-ssh() {
    local git_bin
    local current_url
    local temp
    local domain
    local path
    local new_url

    if ! command -v git >/dev/null 2>&1; then
        echo "Error: git is not installed or not in PATH."
        return 127
    fi

    git_bin=$(command -v git)

    if ! current_url=$("$git_bin" remote get-url origin 2>/dev/null); then
        echo "Error: Not a git repository or no 'origin' remote found."
        return 1
    fi

    if [[ "$current_url" == git@* ]]; then
        echo "Remote 'origin' is already using SSH: $current_url"
        return 0
    fi

    if [[ "$current_url" == https://* ]]; then
        temp="${current_url#https://}"
        domain="${temp%%/*}"
        path="${temp#*/}"
        new_url="git@${domain}:${path}"

        if ! "$git_bin" remote set-url origin "$new_url"; then
            echo "Error: Failed to update origin to SSH."
            return 1
        fi

        echo "Successfully swapped origin to SSH!"
        echo "Old: $current_url"
        echo "New: $new_url"
    else
        echo "Error: Could not parse HTTPS URL format ($current_url)."
        return 1
    fi
}

ff() {
    local conf="$HOME/dotfiles/fastfetch/config-short.jsonc"
    local args

    args=$(getopt -o ls -- "$@") || return 1
    eval set -- "$args"

    while true; do
        case "$1" in
            -l)
                conf="$HOME/dotfiles/fastfetch/config-long.jsonc"
                shift
                ;;
            -s)
                conf="$HOME/dotfiles/fastfetch/config-short.jsonc"
                shift
                ;;
            --)
                shift
                break
                ;;
        esac
    done

    fastfetch --config "$conf" "$@" \
        --logo "$HOME/dotfiles/assets/logo/orbit.png"
}


# --------------------------------------
# Prompt flag setters
# --------------------------------------
zu() {
    export ZSSH=1
}

zuc() {
    unset ZSSH
}

zdev() {
    export ZPY=1
    export ZGIT=1
}

zclean() {
    unset ZPY ZGIT
}

