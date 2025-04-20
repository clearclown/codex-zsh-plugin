# ~/.oh-my-zsh/custom/plugins/codex/codex.plugin.zsh

plugin_dir=${0:A:h}
fpath=($plugin_dir $fpath)

# ~/.codex_lang を読み込み
if [[ -f "$HOME/.codex_lang" ]]; then
  CODEX_LANG=$(cat "$HOME/.codex_lang")
else
  CODEX_LANG="en"  # fallback
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
