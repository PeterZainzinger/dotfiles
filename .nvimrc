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
Plug 'Chiel92/vim-autoformat'
Plug 'christoomey/vim-tmux-navigator'
Plug 'Shougo/vimproc'

Plug 'tpope/vim-fugitive'
Plug 'neomake/neomake'
Plug 'sbdchd/neoformat'
Plug 'mileszs/ack.vim'

" Language Plugins
Plug 'neovimhaskell/haskell-vim'
Plug 'sbdchd/neoformat'
Plug 'maksimr/vim-jsbeautify'
Plug 'eagletmt/ghcmod-vim'
Plug 'stephpy/vim-yaml'
Plug 'posva/vim-vue'
Plug 'dart-lang/dart-vim-plugin'
Plug 'ekalinin/Dockerfile.vim'
Plug 'tell-k/vim-autopep8'
Plug 'jparise/vim-graphql'
Plug 'editorconfig/editorconfig-vim'
"Plug 'https://framagit.org/tyreunom/coquille'
Plug 'lervag/vimtex'

" deoplete

Plug 'Shougo/deoplete.nvim'
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'davidhalter/jedi-vim'

Plug 'HerringtonDarkholme/yats.vim'
Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
" For Denite features
Plug 'Shougo/denite.nvim'

" Themes 
Plug 'morhetz/gruvbox'
Plug 'altercation/vim-colors-solarized'


call plug#end()



" -------------------------------------------
"  Theme
" -------------------------------------------

"set background=dark
set background=dark
"colorscheme gruvbox
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

nnoremap ,c :call NERDComment(0,"toggle")<CR>
vnoremap ,c :call NERDComment(0,"toggle")<CR>




augroup fmt
  autocmd!
  autocmd BufWritePre *.hs undojoin | Neoformat
augroup END

let g:ctrlp_custom_ignore = 'node_modules\|bower_components\|DS_Store\|git|vagrant|lib'

" Coq / coquille
"command Cc call CoqToCursor()
"command Cn call CoqNext()
"command Cu call CoqUndo()
"command Ca call CoqCancel()
"command Cs call CoqStop()


command! Cl call CoqLaunch()
autocmd FileType coq noremap <buffer>  <Leader>r :call CoqToCursor()<cr>

hi default CheckedByCoq ctermbg=LightCyan guibg=LightGreen

command! Vimrc :vs $MYVIMRC
command! VimReload :source $MYVIMRC

"autocmd FileType tex noremap <buffer>  <Leader>r :w<cr>:silent !pdflatex main.tex<cr>:silent !pkill -HUP mupdf<cr>
"
call deoplete#custom#var('omni', 'input_patterns', {
        \ 'tex': g:vimtex#re#deoplete
        \})



let g:tex_flavor  = 'latex'
let g:tex_conceal = ''
let g:vimtex_fold_manual = 1
let g:vimtex_latexmk_continuous = 1
let g:vimtex_compiler_progname = 'nvr'
let g:vimtex_view_method = 'mupdf'

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
autocmd FileType python noremap <buffer> <Leader>f :call Autopep8()<CR>
let g:autopep8_disable_show_diff=1
let g:autopep8_max_line_length=79


autocmd FileType typescript  noremap <buffer> gd :TSDef<cr>
autocmd FileType typescript  noremap <buffer> <Leader>r :TSRename<cr>

autocmd! BufWritePost *.tex NeomakeSh make build

if has('nvim')
  nmap <bs> :<c-u>TmuxNavigateLeft<cr>
endif

au BufReadPost Jenkinsfile set syntax=groovy
au BufReadPost Jenkinsfile set filetype=groovy

" disable autocompletion, cause we use deoplete for completion
let g:jedi#completions_enabled = 0

" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right"

" -------------------------------------------
" Spelling 
" -------------------------------------------

command! Spellgerman execute ":setlocal spell spelllang=de_de"

let g:neoformat_haskell_hindent = {
            \ 'exe': 'hindent',
            \ 'args': ['--style johan-tibell','--line-length 80'],
            \ 'stdin' : 1,
            \ }

let g:neoformat_enabled_haskell = ['hindent']

" -------------------------------------------
"  Snippets
" -------------------------------------------

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" fastlane

au BufNewFile,BufRead Appfile set ft=ruby
au BufNewFile,BufRead Deliverfile set ft=ruby
au BufNewFile,BufRead Fastfile set ft=ruby
au BufNewFile,BufRead Gymfile set ft=ruby
au BufNewFile,BufRead Matchfile set ft=ruby
au BufNewFile,BufRead Snapfile set ft=ruby
au BufNewFile,BufRead Scanfile set ft=ruby

autocmd BufNewFile,BufRead *.yml set syntax=yaml



let g:neoformat_enabled_python = ['autopep8', 'yapf', 'docformatter']

