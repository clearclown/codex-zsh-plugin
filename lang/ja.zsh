# ~/.oh-my-zsh/custom/plugins/codex/lang/ja.zsh

# エイリアス
alias cdx='codex'
alias cdxq='codex --quiet'
alias cdxj='codex --quiet --json'
alias cdxae='codex --auto-edit'
alias cdxfa='codex --full-auto'

# 補助関数
function cdximg() {
  codex --image "$1" "${@:2}"
}

function cdxdoc() {
  codex --project-doc "$1" "${@:2}"
}

# メッセージ
# echo "✨ Codex CLI を日本語モードで起動しました"
