" plugin
call plug#begin('~/.vim/plugged')
" color scheme
Plug 'w0ng/vim-hybrid'
" for NERDTree
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
" for vim-lsp
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'mattn/vim-lsp-icons'
Plug 'mattn/vim-goimports'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 't9md/vim-quickhl'
" for lightline
Plug 'itchyny/lightline.vim'
" for markdown
Plug 'plasticboy/vim-markdown'
Plug 'godlygeek/tabular'
" for js/vue.js
Plug 'posva/vim-vue'
Plug 'jelera/vim-javascript-syntax'
Plug 'othree/yajs.vim'
" for fzf
"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" for SQL Formatter
Plug 'mattn/vim-sqlfmt'
call plug#end()

set background=dark
let g:hybrid_use_iTerm_colors = 1
colorscheme hybrid
syntax on
filetype plugin indent on

" 各種設定の読み込み
call map(sort(split(globpath(&runtimepath, 'config/*.vim'))), {->[execute('exec "so" v:val')]})

set laststatus=2
"set statusline=%-(%f%m%h%q%r%w%)%=%{&ff}\|%{&fenc}\ %y%l,%c\ %0P
"set statusline=%F%m%h%w\ %<[ENC=%{&fenc!=''?&fenc:&enc}]\ [FMT=%{&ff}]\ [TYPE=%Y]\ %=[CODE=0x%02B]\ [POS=%l/%L(%02v)]

" for vim-markdown
let g:vim_markdown_folding_disabled = 1
set nofoldenable

" 長い行の解析上限
set synmaxcol=200

" マクロの途中で画面を再描画がしない
set lazyredraw

" hjkl等の長押しが早くなる
set ttyfast

" ソースコード用
set number
"set cursorline
hi CursorLineNr term=bold cterm=NONE ctermfg=228 ctermbg=NONE

" タブ文字幅
set tabstop=4
" 自動インデントの幅
set shiftwidth=4
" タブ・改行・行末の表示
set list listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%

" enable simplify filter
let g:goimports_simplify = 1

" fzf
set rtp+=/opt/homebrew/opt/fzf
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

nnoremap <Leader>f :Files<CR>
nnoremap <Leader>s :Rg<CR>
nnoremap <Leader>b :Buffer<CR>

" sqlfmt
let g:sqlfmt_program = "sqlformat --comma_first true -r -k upper -o %s -"

" マウスの使用を有効にする
set mouse=a
" システムのクリップボードを使用する
set clipboard=unnamedplus
