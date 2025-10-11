return {
  "dhruvasagar/vim-table-mode",
  -- テーブルを書いているMarkdownファイルでのみ有効にしたい場合は ftで制限する
  ft = { "markdown" },
  -- コマンドを叩くとロードする場合
  cmd = { "TableModeToggle" },
  config = function()
    -- 例えばデフォルトでTableModeを有効にしたい場合
    vim.g.table_mode_always_active = 1

    -- オプションをいくつか設定例
    vim.g.table_mode_corner = '|'
    vim.g.table_mode_header_fillchar = '='
    vim.g.table_mode_align_char = ':'

    -- 自動整形の設定（お好みで）
    vim.g.table_mode_auto_align = 1
  end,
}
