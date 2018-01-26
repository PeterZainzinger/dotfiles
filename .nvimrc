" -------------------------------------------
"  Basic
" -------------------------------------------

filetype plugin on
set t_Co=256
syntax on

let mapleader = ','			
set cursorline
set cursorcolumn
set noswapfile
set number 
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set showmatch
set modifiable
set splitright
set encoding=utf-8
set fillchars+=stl:\ ,stlnc:\
set termencoding=utf-8
set nocompatible
set showmode
set clipboard+=unnamedplus
set backspace=indent,eol,start
set autoindent 
set hlsearch
set nofoldenable


" -------------------------------------------
"  Plugin
" -------------------------------------------


call plug#begin('~/.config/nvim/plugged')

" General Purpose
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'Numkil/ag.nvim'
Plug 'Chiel92/vim-autoformat'
Plug 'christoomey/vim-tmux-navigator'
Plug 'Shougo/vimproc'
Plug 'gcmt/taboo.vim'
Plug 'tpope/vim-fugitive'
Plug 'neomake/neomake'


" Language Plugins
Plug 'neovimhaskell/haskell-vim'
Plug 'sbdchd/neoformat'
Plug 'maksimr/vim-jsbeautify'
Plug 'eagletmt/ghcmod-vim'
Plug 'jalvesaq/Nvim-R'
Plug 'leafgarland/typescript-vim'
Plug 'mhartington/nvim-typescript'
Plug 'stephpy/vim-yaml'
Plug 'posva/vim-vue'
Plug 'adimit/prolog.vim'


Plug 'Shougo/deoplete.nvim'
Plug 'eagletmt/neco-ghc'

" Themes 
Plug 'morhetz/gruvbox'


call plug#end()



" -------------------------------------------
"  Theme
" -------------------------------------------

set background=dark
"colorscheme gruvbox
"set background=light
colorscheme solarized
hi vertsplit ctermfg=238 ctermbg=235
hi LineNr ctermfg=237
hi StatusLine ctermfg=235 ctermbg=245
hi StatusLineNC ctermfg=235 ctermbg=237
hi Search ctermbg=58 ctermfg=15
hi Default ctermfg=1
hi clear SignColumn
hi SignColumn ctermbg=235
hi GitGutterAdd ctermbg=235 ctermfg=245
hi GitGutterChange ctermbg=235 ctermfg=245
hi GitGutterDelete ctermbg=235 ctermfg=245
hi GitGutterChangeDelete ctermbg=235 ctermfg=245
hi EndOfBuffer ctermfg=237 ctermbg=235

set statusline=%=\ %f\ %m
set fillchars=vert:\ ,stl:\ ,stlnc:\ 
set laststatus=2
set noshowmode

" -------------------------------------------
"  Plugin Config
" -------------------------------------------

let g:deoplete#enable_at_startup = 1

let g:NERDTreeDirArrows=0
let NERDTreeIgnore = ['\.pyc$','__pycache__']

"let g:ctrlp_custom_ignore = 'node_modules\|bower_components\|DS_Store\|git\|vagrant\|lib\|env\|pyc\|target'

augroup fmt
  autocmd!
  autocmd BufWritePre *.hs undojoin | Neoformat
augroup END

let g:ctrlp_custom_ignore = 'node_modules\|bower_components\|DS_Store\|git|vagrant|lib'



" -------------------------------------------
" Key Bindings
" -------------------------------------------

noremap <Leader>q :q <CR>
noremap <Leader>s :w <Enter>
noremap <Leader>l :Neomake <Enter>

map <C-t> :NERDTreeToggle<CR>

"inoremap <expr> j ((pumvisible())?("\<C-n>"):("j"))
"inoremap <expr> k ((pumvisible())?("\<C-p>"):("k"))


autocmd BufRead,BufNewFile *.yml set filetype=ansible


" Format
autocmd FileType rust noremap <buffer>  <Leader> :call RustFmt()<cr>
autocmd FileType javascript noremap <buffer> <Leader>f :call JsBeautify()<cr>
autocmd FileType typescript  noremap <buffer> <Leader>f :Autoformat<cr>
autocmd FileType json noremap <buffer> <Leader>f :call JsonBeautify()<cr>
autocmd FileType jsx noremap <buffer> <Leader>f :call JsxBeautify()<cr>
autocmd FileType html noremap <buffer> <Leader>f :call HtmlBeautify()<cr>
autocmd FileType css noremap <buffer> <Leader>f :call CSSBeautify()<cr>
autocmd FileType scss noremap <buffer> <Leader>f :call CSSBeautify()<cr>
autocmd FileType sass noremap <buffer> <Leader>f :call CSSBeautify()<cr>

autocmd! BufWritePost *.tex NeomakeSh make build

if has('nvim')
  nmap <bs> :<c-u>TmuxNavigateLeft<cr>
endif

au BufReadPost Jenkinsfile set syntax=groovy
au BufReadPost Jenkinsfile set filetype=groovy




" -------------------------------------------
" Spelling 
" -------------------------------------------

command Spellgerman execute ":setlocal spell spelllang=de_de"

let g:neoformat_haskell_hindent = {
            \ 'exe': 'hindent',
            \ 'args': ['--style johan-tibell','--line-length 80'],
            \ 'stdin' : 1,
            \ }

let g:neoformat_enabled_haskell = ['hindent']
