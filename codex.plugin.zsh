# ~/.oh-my-zsh/custom/plugins/codex/codex.plugin.zsh

plugin_dir=${0:A:h}
fpath=($plugin_dir $fpath)

# 言語読み込み
if [[ -f "$HOME/.codex_lang" ]]; then
  CODEX_LANG=$(cat "$HOME/.codex_lang")
else
  CODEX_LANG="en"
fi

# 補完登録
if [[ -f "$plugin_dir/_codex" ]]; then
  autoload -Uz _codex
  compdef _codex codex
fi

# 言語ファイル読み込み
lang_file="$plugin_dir/lang/$CODEX_LANG.zsh"
if [[ -f "$lang_file" ]]; then
  source "$lang_file"
else
  echo "⚠️ Language file not found: $lang_file"
fi

# codex-lang-config 関数定義
function codex-lang-config() {
  echo "🌐 Select your language / 言語を選択してください:"
  echo "1) English 🇬🇧"
  echo "2) 日本語"
  echo "3) 简体中文 🇨🇳"
  echo "4) 繁體中文 "
  echo "5) العربية 🇸🇦"
  echo "6) فارسی 🇮🇷"
  echo "7) Русский 🇷🇺"
  echo -n "Input [1-7, default: 1]: "
  read lang_choice

  case "$lang_choice" in
    2) lang="ja" ;;
    3) lang="zh" ;;
    4) lang="zh-tw" ;;
    5) lang="ar" ;;
    6) lang="fa" ;;
    7) lang="ru" ;;
    *) lang="en" ;;
  esac

  echo "$lang" > "$HOME/.codex_lang"
  echo "✅ Language set to: $lang"
}

# 現在の言語を表示する補助関数
function codex-current-lang() {
  echo "🌐 Current Codex language: ${CODEX_LANG:-en}"
}
