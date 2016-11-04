syntax enable
let mapleader = ','			

se t_Co=16
set cursorline
set cursorcolumn
set noswapfile
set number
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set showmatch
set number
set modifiable
set splitright
set fillchars+=stl:\ ,stlnc:\
set nocompatible
filetype plugin on
"set foldenable          " enable folding


set showmode
set clipboard=unnamed
set backspace=indent,eol,start
set autoindent 
set hlsearch
set nofoldenable

" --------------------------------------------------------------------
"  Theme
" -------------------------------------------------------------------

set background=dark
colorscheme nova


"------------------------------------------------------------------
"  Custom Key Mappings
" --------------------------------------------------------------------

map <C-t> :NERDTreeToggle<CR>
map <D-s> :w
map <C-f> :CommandT<CR>
map <C-g> :CommandTJump<CR>
noremap <Leader>q :q <CR>
noremap <Leader>s :w <Enter>

:au FocusLost * silent! wa

autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

nnoremap <silent> <LEADER>gs  :Gstatus<CR>
nnoremap <silent> <LEADER>ga  :Git add -A<CR>
nnoremap <silent> <LEADER>gc  :Gcommit<CR>
nnoremap <silent> <LEADER>gl  :Glog<CR>
nnoremap <silent> <LEADER>gb  :Gblame<CR>
nnoremap <silent> <LEADER>gd  :Gdiff<CR>
let g:move_key_modifier = 'C'
nnoremap <silent> <LEADER>vr  :e ~/.vimrc<CR>

" Ack
noremap <Leader>a :Ack <cword><cr>
noremap <Leader>A :Ack <cWORD><cr>

" --------------------------------------------------------------------
" Folding 
" --------------------------------------------------------------------

set foldmethod=marker 
set foldmarker={{{,}}}

let javaScript_fold=1         " JavaScript
let perl_fold=1               " Perl
let php_folding=1             " PHP
let r_syntax_folding=1        " R
let ruby_fold=1               " Ruby
let sh_fold_enabled=1         " sh
let vimsyn_folding='af'       " Vim script
let xml_syntax_folding=1      " XML
let g:sh_fold_enabled= 0

let g:tex_fold_enabled=0

let Tex_FoldedSections=""
let Tex_FoldedEnvironments=""
let Tex_FoldedMisc=""

" --------------------------------------------------------------------
"  Plugin Config
" --------------------------------------------------------------------

let g:NERDTreeDirArrows=0
let NERDTreeIgnore = ['\.pyc$']

" c-p ignore
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc    " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
 
let g:ctrlp_custom_ignore = 'node_modules\|bower_components\|DS_Store\|git|vagrant|lib'
let g:tmuxline_separators = {
        \ 'left' : '',
        \ 'left_alt': '',
        \ 'right' : '',
        \ 'right_alt' : '',
        \ 'space' : ' '}

let python_highlight_all = 1
let g:pymode_options_max_line_length = 80
let g:pymode_lint_options_pep8 =
        \ {'max_line_length': g:pymode_options_max_line_length}

let g:pymode_rope=0
let g:pymode_rope_completion_bind = '<C-Space>'
let g:pymode_rope_completion = 0
let g:pymode_rope_autoimport = 0
let g:pymode_rope_autoimport_import_after_complete = 0
let g:pymode_rope_complete_on_dot = 0
let g:pymode_rope_autoimport_import_after_complete = 0

let g:tex_flavor='latex'

let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_CompileRule_pdf = 'latexmk -pdf -f $*'
set iskeyword+=:

let g:ycm_global_ycm_extra_conf = '~.ycm_extra_conf.py'
let g:ycm_filetype_whitelist = { 'c': 1, 'cpp': 1,'hpp': 1,'h': 1}
" --------------------------------------------------------------------
"  Plugin Managment
" --------------------------------------------------------------------
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
call pathogen#infect()

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'edkolev/tmuxline.vim'
Plugin 'aklt/plantuml-syntax'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ctrlp.vim'   
Plugin 'mileszs/ack.vim'
Plugin 'scrooloose/syntastic'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'tpope/vim-repeat'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'tpope/vim-surround.git'
Plugin 'trevordmiller/nova-vim'
Plugin 'rust-lang/rust.vim'
Plugin 'racer-rust/vim-racer'

" --------------------------------------------------------------------
" Fix my typos 
" --------------------------------------------------------------------

iabbr   lenght  length
iabbr   lentgh  length


" --------------------------------------------------------------------
" Language specific settings
" -------------------------------------------------------------------

" Python 
autocmd FileType python nnoremap <silent> <LEADER>f :PymodeLintAuto<CR>
autocmd FileType python nnoremap <silent> <LEADER>l :PymodeLint<CR>

" CocoaPods
"au BufNewFile,BufRead Podfile,*.podspec      set filetype=ruby
"
