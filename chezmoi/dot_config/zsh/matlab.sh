MATLAB_BASE="$HOME/Applications/Matlab/"
MATLAB_ROOT="$MATLAB_BASE"

matlab() {
    "$MATLAB_ROOT/bin/matlab" \
        -licmode onlinelicensing \
        "$@"
}

matlab-batch() {
    "$MATLAB_ROOT/bin/matlab" \
        -licmode onlinelicensing \
        -batch "$@"
}

matlab-terminal() {
    "$MATLAB_ROOT/bin/matlab" \
        -licmode onlinelicensing \
        -nodesktop \
        "$@"
}
