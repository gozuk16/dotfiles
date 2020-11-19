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
call plug#end()

set background=dark
let g:hybrid_use_iTerm_colors = 1
colorscheme hybrid
syntax on

" 各種設定の読み込み
call map(sort(split(globpath(&runtimepath, 'config/*.vim'))), {->[execute('exec "so" v:val')]})
