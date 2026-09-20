if status is-interactive
and not set -q TMUX
  tmux new-session -A -s 1337
end

fish_vi_key_bindings
set fish_greeting
starship init fish | source
fzf --fish | source
zoxide init fish --cmd cd | source
mise activate fish | source
eval (dircolors -c ~/.config/dircolors/.dircolors | string replace "setenv" "set -gx")
source ~/.config/fish/themes/theme.fish

alias v=nvim
alias vconf="nvim ~/.dotfiles/.config/nvim"
alias lg=lazygit
alias pn=pnpm
alias ls="eza --color=auto --group-directories-first"
alias ll="eza -lah --git"
alias la="eza -a"

ln -sf /mnt/wslg/runtime-dir/wayland-0 /run/user/1000/wayland-0 2>/dev/null
