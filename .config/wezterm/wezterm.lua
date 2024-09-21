local wezterm = require 'wezterm';
local config = {}

-- 背景透過
--config.window_background_opacity = 0.85

-- IME
config.use_ime = true

-- Font
config.font = wezterm.font("Hack Nerd Font Mono")
config.font_size = 12.0

-- CTRL + - などでのフォント変更時にウインドウサイズを変更しない
config.adjust_window_size_when_changing_font_size = false

-- color https://wezfurlong.org/wezterm/colorschemes/index.html
config.color_scheme = "Tokyo Night"

-- タブが1つの時はタブバーを隠す
config.hide_tab_bar_if_only_one_tab = true

-- デフォルトキーバインドの無効化
--config.disable_default_key_bindings = true

config.keys = {
  -- Command + s で新しいペインを作成(画面を分割)
  { key = 's', mods = 'CMD', action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' }, },
  { key = 'h', mods = 'CMD|SHIFT', action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' }, },
  -- Command + [ でパネル選択
  { key = '[', mods = 'CMD', action = wezterm.action.PaneSelect },
  -- Command + hjkl でペインを移動
  { key = 'h', mods = 'CMD', action = wezterm.action( { ActivatePaneDirection = 'Left' } ), },
  { key = 'j', mods = 'CMD', action = wezterm.action( { ActivatePaneDirection = 'Down' } ), },
  { key = 'k', mods = 'CMD', action = wezterm.action( { ActivatePaneDirection = 'Up' } ), },
  { key = 'l', mods = 'CMD', action = wezterm.action( { ActivatePaneDirection = 'Right' } ), },
  -- コマンドのキャンセルに CTRL + C を割り当てる
  --{ key = 'c', mods = 'CTRL', action = wezterm.action( { SendString = "\x03" } ), },
}

-- マウスホイールの設定
mouse_bindings = {
  -- スクロールアップをスクロールバッファの一部として動作させる
  {
    event = { Down = { streak = 1, button = "WheelUp" } },
    mods = "NONE",
    action = wezterm.action { ScrollByPage = -0.5 }, -- スクロールアップ
  },
  -- スクロールダウンをスクロールバッファの一部として動作させる
  {
    event = { Down = { streak = 1, button = "WheelDown" } },
    mods = "NONE",
    action = wezterm.action { ScrollByPage = 0.5 }, -- スクロールダウン
  },
}

return config
