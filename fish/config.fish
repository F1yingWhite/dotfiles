if status is-interactive
    # Commands to run in interactive sessions can go here
end
set -U fish_greeting
set -g fish_history_ignore_errors 0
set -U fzf_preview_file_cmd "bat --color=always"
set -U fzf_preview_dir_cmd "exa --all --color=always"

starship init fish | source
export https_proxy=http://127.0.0.1:7890
export http_proxy=http://127.0.0.1:7890
export all_proxy=socks5://127.0.0.1:7890
export EDITOR="nvim"

export UV_PYPY_INSTALL_MIRROR=https://mirrors.tuna.tsinghua.edu.cn/pypi/web/simple
export UV_COMPILE_BYTECODE=1
uv generate-shell-completion fish | source
uvx --generate-shell-completion fish | source

zoxide init --cmd cd fish | source
fzf --fish | source

export FZF_PREVIEW_ADVANCED=1
export FZF_DEFAULT_OPTS="\
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#b4befe,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8 \
--color=selected-bg:#45475a \
--preview '~/.config/zsh/fzf_preview.sh {}' \
--preview-window=right:60%:wrap --height 70% --tmux bottom,70% --layout=reverse --border \
"

function y
    set tmp (mktemp -t "yazi-cwd.XXXXXX")
    yazi $argv --cwd-file="$tmp"
    if set cwd (command cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
        builtin cd -- "$cwd"
    end
    rm -f -- "$tmp"
end

# Helpful aliases
alias cls='clear; fastfetch' # clear terminal
alias c='clear'
alias l='eza -lh  --icons=auto' # long list
alias ls='eza --icons=auto' # short list
alias 'la'='ls -a'
alias ll='eza -lha --icons=auto --sort=name --group-directories-first' # long list all
alias ld='eza -lhD --icons=auto' # long list dirs
alias lt='eza --icons=auto --tree' # list folder as tree
alias vim='nvim'
alias vi='nvim'
alias v='nvim'
alias mv='mv -v'
alias reload='source ~/.config/fish/config.fish'
# Handy change dir shortcuts
alias z=cd
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'
# Always mkdir a path (this doesn't inhibit functionality to make a single dir)
alias mkdir='mkdir -p'
alias sudo='sudo -E'

# brew
set -x HOMEBREW_NO_AUTO_UPDATE false

# uv
fish_add_path "/Users/flyingwhite/.local/bin"

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init2.fish 2>/dev/null || :
