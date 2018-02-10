
"""""""""" Plugins/Vundle """"""""""
" Vundle SETUP
set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'flazz/vim-colorschemes'
Plugin 'tpope/vim-fugitive'
Plugin 'lervag/vimtex'
Plugin 'jalvesaq/Nvim-R'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line



"""""""""" Plugin Setup &  Key Remap """"""""""
" ESC remapped in Insert mode
inoremap jk <esc>

""" VimTex """
let g:vimtex_view_method = 'skim' " Default PDF viewer


""" NvimR """
" Send line
nmap , <Plug>RDSendLine 
" send multiple lines  
vmap , <Plug>RDSendSelection 
" send multiple lines + echo lines
vmap ,e <Plug>RESendSelection
let R_assign = 0 " Disable mapping of _ to <-
let R_in_buffer = 0
let R_applescript = 1 " Run native R console
let R_min_editor_width = 80 " set a minimum source editor width
let R_rconsole_height = 450
let R_rconsole_width = 0 " always horizontal split
let R_show_args = 1 " show arguments for functions during omnicompletion
let g:Rout_more_colors = 1 " R commands in R output are highlighted
let g:rout_follow_colorscheme = 1 " highlighted with current colorscheme



"""""""""" Vim UI """"""""""
syntax enable
set spell spelllang=en_us
 
" TIP: if you write your \label's as \label{fig:something}, then if you
" type in \ref{fig: and press <C-n> you will automatically cycle through
" all the figure labels. Very useful!
"set iskeyword+=:

colorscheme molokai 
set incsearch             " But do highlight as you type your search.
set cul                   " Highlight current line OR set cursorline
set showmatch             " Show matching brackets
set ruler                 " Always show info along bottom.
set number                " Line Number
" Text Formatting
"set autoindent            " auto-indent
set tabstop=4             " tab spacing
set softtabstop=4         " unify
set shiftwidth=4          " indent/outdent by 2 columns
set shiftround            " always indent/outdent to the nearest tabstop
"set expandtab             " use spaces instead of tabs
"set smartindent           " automatically insert one extra level of indentation
"set smarttab              " use tabs at the start of a line, spaces elsewhere
"set nowrap                " don't wrap text

