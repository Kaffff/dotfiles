
# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

function peco-history () {
  BUFFER=$(\history -n -r 1 | peco --query "$LBUFFER")
  CURSOR=$BUFFER
  zle clear-screen
}
zle -N peco-history
bindkey '^r' peco-history

## ghqとの連携。ghqの管理化にあるリポジトリを一覧表示する。ctrl - ]にバインド。
function peco-src () {
  local selected_dir=$(ghq list -p | peco --prompt="repositories >" --query "$LBUFFER")
  if [ -n "$selected_dir" ]; then
    BUFFER="cd ${selected_dir}"
    zle accept-line
  fi
  zle clear-screen
}
zle -N peco-src
bindkey '^]' peco-src



autoload -Uz promptinit
promptinit
prompt pure


export PATH=$HOME/.nodebrew/current/bin:$HOME/.yarn/bin:$PATH
export PATH=$HOME/.rbenv/shims:$PATH
export PATH="/opt/homebrew/opt/postgresql@12/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/postgresql@12/lib"
export CPPFLAGS="-I/opt/homebrew/opt/postgresql@12/include"



