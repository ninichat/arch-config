# modified commands
alias df='df -h'
alias diff='colordiff'              # requires colordiff package
alias du='du -c -h'
alias free='free -m'                # show sizes in mb
alias grep='grep -E --color=auto -d skip'
alias mkdir='mkdir -p -v'
alias more='less'                   # more doesn't have vim shortcuts
alias ping='ping -c 3'

# With password manager, disable logging the password in ram
alias qutebrowser='qutebrowser --loglines 0'

# Convenience aliases
alias v=vim
alias g=git

# Json pretty printing
pjson_s() {
    echo "$1" | python -m json.tool
}

pjson_f() {
    python -m json.tool "$1"
}

pjson_w() {
    curl "$1" | python -m json.tool
}
