alias cdx='codex'
alias cdxq='codex --quiet'
alias cdxj='codex --quiet --json'
alias cdxae='codex --auto-edit'
alias cdxfa='codex --full-auto'

function cdximg() {
  codex --image "$1" "${@:2}"
}

function cdxdoc() {
  codex --project-doc "$1" "${@:2}"
}

# echo "✨ Codex CLI در حالت فارسی اجرا شد"
