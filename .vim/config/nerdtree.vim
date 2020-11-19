" vim-nerdtree-tabs
" 隠しファイルを表示する
let NERDTreeShowHidden = 1

nnoremap <silent><C-n> :NERDTreeToggle<CR>
nnoremap <silent><C-e> :NERDTreeFocusToggle<CR>

" デフォルト OFF
let g:nerdtree_tabs_open_on_console_startup=0
let g:nerdtree_tabs_open_on_gui_startup=0

" 他のバッファをすべて閉じた時にNERDTreeが開いていたらNERDTreeも一緒に閉じる。
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
