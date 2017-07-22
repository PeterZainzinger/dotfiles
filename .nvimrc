" -------------------------------------------
"  Basic
" -------------------------------------------
syntax enable
let mapleader = ','			
set cursorline
set cursorcolumn
set noswapfile
set number "show line number
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set showmatch
set modifiable
set splitright
set encoding=utf-8
set fillchars+=stl:\ ,stlnc:\
set termencoding=utf-8
set nocompatible
set showmode
set clipboard=unnamed
set backspace=indent,eol,start
set autoindent 
set hlsearch
set nofoldenable


" -------------------------------------------
"  Theme
" -------------------------------------------

"set background=dark
"colorscheme nova

set background=light
colorscheme solarized

" -------------------------------------------
"  Plugin
" -------------------------------------------

call plug#begin('~/.config/nvim/plugged')

" General Purpose
"Plug 'vim-syntastic/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'ctrlp.vim'   
Plug 'scrooloose/nerdcommenter'
Plug 'neomake/neomake'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'Numkil/ag.nvim'
Plug 'trevordmiller/nova-vim'
Plug 'Chiel92/vim-autoformat'
Plug 'christoomey/vim-tmux-navigator'
Plug 'powerman/vim-plugin-AnsiEsc'
Plug 'Shougo/vimproc'

" Language Plugins
Plug 'tarrant/rust.vim'
Plug 'neovimhaskell/haskell-vim'
"Plug 'alx741/vim-hindent'
Plug 'sbdchd/neoformat'

Plug 'pbrisbin/vim-syntax-shakespeare'
Plug 'maksimr/vim-jsbeautify'
Plug 'leafgarland/typescript-vim'
Plug 'mattn/emmet-vim'
Plug 'chase/vim-ansible-yaml'
Plug 'posva/vim-vue'
Plug 'elixir-lang/vim-elixir'
Plug 'eagletmt/ghcmod-vim'
Plug 'cespare/vim-toml'
Plug 'jalvesaq/Nvim-R'

 "Snippets
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'

" Deoplete
Plug 'Shougo/deoplete.nvim'
"Plug 'mhartington/deoplete-typescript'
Plug 'sebastianmarkow/deoplete-rust'
Plug 'zchee/deoplete-jedi'
Plug 'eagletmt/neco-ghc'
Plug 'slashmili/alchemist.vim'

" Esoteric
Plug 'yuratomo/w3m.vim'
Plug 'vimwiki/vimwiki'

call plug#end()

" -------------------------------------------
"  Plugin Config
" -------------------------------------------
set runtimepath+=~/.config/nvim/cache/deoplete.nvim/
"call deoplete#enable()
"set runtimepath+=~/.vim/snippets/

"Snippet
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetsDir="~/dotfiles/snippets"
"let g:UltiSnipsSnippetDirectories=["~/dotfiles/snippets"]
let g:UltiSnipsUsePythonVersion = 3

let g:deoplete#sources#typescript = ['tsc','buffer', 'file', 'ultisnips']
let g:deoplete#sources#html       = ['buffer', 'file', 'ultisnips']
"let g:deoplete#sources={}
"let g:deoplete#sources._=['buffer', 'file', 'ultisnips']

let g:NERDTreeDirArrows=0
let NERDTreeIgnore = ['\.pyc$','__pycache__']

let g:ctrlp_custom_ignore = 'node_modules\|bower_components\|DS_Store\|git\|vagrant\|lib\|env\|pyc\|target'

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_aggregate_errors = 1

let g:syntastic_html_checkers=['']
let g:syntastic_html_tidy_ignore_errors=[
    \'proprietary attribute "ng-',
\]
let g:syntastic_html_tidy_ignore_errors=[]
let g:syntastic_quiet_messages = {"regex": 'is unstable and should only be used on the nightly compiler, but it is currently accepted for backwards compatibility; this will soon change, see issue #31847 for more details'}

let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
nnoremap <C-w>E :SyntasticCheck<CR> :SyntasticToggleMode<CR>

let g:rustfmt_fail_silently = 0
let g:neomake_rust_enabled_makers = ['cargo']
"let g:neomake_open_list=1

let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''

let g:syntastic_typescript_checks=['tslint']

let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#rust#racer_binary='/Users/peterzainzinger/.cargo/bin/racer'
let g:deoplete#sources#rust#rust_source_path='/Users/peterzainzinger/.multirust/toolchains/stable-x86_64-apple-darwin/lib/rustlib/src/rust/src'

" Disable haskell-vim omnifunc
"let g:haskellmode_completion_ghc = 0
"let g:deoplete#sources#haskell = ['ghc','ultisnips']
"autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc

augroup fmt
  autocmd!
  autocmd BufWritePre *.hs undojoin | Neoformat
augroup END

let g:syntastic_enable_elixir_checker = 1
let g:syntastic_elixir_checkers=['elixir']


" -------------------------------------------
" Key Bindings
" -------------------------------------------

noremap <Leader>q :q! <CR>
noremap <Leader>s :w <Enter>
noremap <Leader>l :Neomake <Enter>


map <C-t> :NERDTreeToggle<CR>

autocmd BufRead,BufNewFile *.yml set filetype=ansible


" Format
autocmd FileType rust noremap <buffer>  <Leader> :call RustFmt()<cr>
autocmd FileType javascript noremap <buffer> <Leader>f :call JsBeautify()<cr>
autocmd FileType typescript  noremap <buffer> <Leader>f :Autoformat<cr>
autocmd FileType json noremap <buffer> <Leader>f :call JsonBeautify()<cr>
autocmd FileType jsx noremap <buffer> <Leader>f :call JsxBeautify()<cr>
autocmd FileType html noremap <buffer> <Leader>f :call HtmlBeautify()<cr>
autocmd FileType css noremap <buffer> <Leader>f :call CSSBeautify()<cr>

"autocmd BufWritePost *.tex :call NeomakeSh make build

autocmd! BufWritePost *.tex NeomakeSh make build

noremap <Leader>bec c<c-r>=system('base64 ', @")<cr><esc>
noremap <Leader>bdc c<c-r>=system('base64 --decode', @")<cr><esc>

"nnoremap <C-J> <C-W><C-J>
"nnoremap <C-K> <C-W><C-K>
"nnoremap <C-L> <C-W><C-L>
"nnoremap <C-H> <C-W><C-H>

filetype plugin on
"
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
"let g:UltiSnipsExpandTrigger="<c-f>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"


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
