call plug#begin('~/.vim/plugged')
" color scheme
Plug 'w0ng/vim-hybrid'
" plugin
" for NERDTree
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
" for ctrlp
Plug 'ctrlpvim/ctrlp.vim'
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
call plug#end()

set background=dark
let g:hybrid_use_iTerm_colors = 1
colorscheme hybrid
syntax on

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

" マクロの途中で画面を西行がしない
set lazyredraw

" hjkl等の長押しが早くなる
set ttyfast
