syntax enable
let mapleader = ','			
set cursorline
set cursorcolumn
set noswapfile
set number
set expandtab
set shiftwidth=4
set showmatch
set number
set modifiable
set splitright
set encoding=utf-8
set fillchars+=stl:\ ,stlnc:\
set termencoding=utf-8
set nocompatible
filetype plugin on
"set foldenable          " enable folding
set nofoldenable    " disable folding
set showmode
set clipboard=unnamed
set backspace=indent,eol,start
set autoindent 


" --------------------------------------------------------------------
"  Theme
" -------------------------------------------------------------------

set background=dark
colorscheme base16-railscasts

"highlight clear SignColumn
highlight VertSplit    ctermbg=236
highlight ColorColumn  ctermbg=236
highlight LineNr       ctermbg=236 
highlight CursorLineNr ctermbg=236 
highlight CursorLine   ctermbg=236
highlight CursorColumn ctermbg=236
highlight StatusLineNC ctermbg=238 ctermfg=0
highlight StatusLine   ctermbg=240 ctermfg=12
highlight IncSearch    ctermbg=3   ctermfg=1
highlight Search       ctermbg=1   ctermfg=3
highlight Visual       ctermbg=3   ctermfg=0
highlight Pmenu        ctermbg=240 ctermfg=12
highlight PmenuSel     ctermbg=3   ctermfg=1
highlight SpellBad     ctermbg=0   ctermfg=1

"------------------------------------------------------------------
"  Custom Key Mappings
" --------------------------------------------------------------------

map <C-t> :NERDTreeToggle<CR>
map <C-u> :TagbarToggle<CR>
map <D-s> :w
map <C-f> :CommandT<CR>
map <C-g> :CommandTJump<CR>
map <c-f> :call JsBeautify()<cr>
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

let g:pymode_rope = 1
let g:pymode_rope_completion_bind = '<C-Space>'
let g:pymode_rope_completion = 1
let g:pymode_rope_autoimport = 1
let g:pymode_rope_autoimport_import_after_complete = 1
let g:pymode_rope_complete_on_dot = 1
let g:pymode_rope_autoimport_import_after_complete = 1

let g:tex_flavor='latex'

let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_CompileRule_pdf = 'latexmk -pdf -f $*'
set iskeyword+=:

" --------------------------------------------------------------------
"  Plugin Managment
" --------------------------------------------------------------------
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
call pathogen#infect()

Plugin 'bling/vim-airline'
Plugin 'itchyny/lightline.vim'
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-dispatch'
Plugin 'klen/python-mode'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'freeo/vim-kalisi'
Plugin 'tpope/vim-fugitive'
Plugin 'lervag/vim-latex'
Plugin 'suan/vim-instant-markdown'
Plugin 'groenewege/vim-less'
Plugin 'ryanss/vim-hackernews'
Plugin 'edkolev/tmuxline.vim'
Plugin 'aklt/plantuml-syntax'
Plugin 'majutsushi/tagbar'
Plugin 'joonty/vdebug'
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ctrlp.vim'   
Plugin 'vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim.git'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'mileszs/ack.vim'
Plugin 'scrooloose/syntastic'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'tpope/vim-repeat'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'kchmck/vim-coffee-script'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'matze/vim-move'
Plugin 'ajh17/Spacegray.vim'
Plugin 'Chiel92/vim-autoformat'
Plugin 'elzr/vim-json'
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

