if status is-interactive
    # Commands to run in interactive sessions can go here
and not set -q TMUX
  tmux new-session -A -s cozy
end

fish_vi_key_bindings
# fish_default_key_bindings
set fish_greeting
starship init fish | source
fzf --fish | source
zoxide init fish --cmd cd | source
eval (dircolors -c ~/.config/dircolors/.dircolors | string replace "setenv" "set -gx")

alias v=nvim
alias lg=lazygit
alias pn=pnpm
alias ls="eza --color=always --group-directories-first"
alias ll="eza -lah --git"

set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

ln -sf /mnt/wslg/runtime-dir/wayland-0 /run/user/1000/wayland-0 2>/dev/null
