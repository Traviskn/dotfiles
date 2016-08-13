"====[ Plugin manager ]========================================================
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-sensible'

Plugin 'tpope/vim-unimpaired'

Plugin 'tpope/vim-fugitive'

Plugin 'tpope/vim-surround'

Plugin 'tpope/vim-fireplace'

Plugin 'scrooloose/syntastic'

Plugin 'scrooloose/nerdtree'

Plugin 'scrooloose/nerdcommenter'

Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'jiangmiao/auto-pairs'

Plugin 'airblade/vim-gitgutter'

Plugin 'Valloric/YouCompleteMe'

Plugin 'mbbill/undotree'

Plugin 'terryma/vim-multiple-cursors'

Plugin 'bronson/vim-trailing-whitespace'

Plugin 'chriskempson/base16-vim'

Plugin 'chriskempson/vim-tomorrow-theme'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'ryanoasis/vim-devicons'

Plugin 'mattn/emmet-vim'

Plugin 'ap/vim-css-color'

Plugin 'pangloss/vim-javascript'

Plugin 'elzr/vim-json'

Plugin 'mxw/vim-jsx'

Plugin 'mustache/vim-mustache-handlebars'

Plugin 'guns/vim-clojure-static'

Plugin 'kien/rainbow_parentheses.vim'

call vundle#end()


"====[ Leader ]================================================================
let mapleader=","


"====[ Filetypes ]=============================================================
filetype plugin on


"====[ Syntax highlighting and colors ]========================================
syntax on
set background=dark
set t_Co=256
set number
colorscheme base16-eighties
" add jbuilder syntax highlighting
au BufNewFile,BufRead *.json.jbuilder set ft=ruby


"====[ Whitespace ]============================================================
" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>
" make tabs, trailing spaces, and end of lines visible characters
set listchars=tab:▸\ ,trail:.,eol:¬
set list
" set color of tab, trailing space, and end-of-line chars to be close to the background color
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59


"====[ Tabs ]===================================================================
" Show existing tabs as 2 characters wide
set tabstop=2
" Convert tabs to whitespace
set expandtab
" Make tab key indent by 2 spaces
set softtabstop=2
" Indent by 2 spaces
set shiftwidth=2
" Automatic Indentation
set autoindent
set smartindent

"====[ Editing ]===============================================================
" Allow backspacing over line breaks, auto-indents, and beginning of the insert
set backspace=2
" Delete comment character when joining commented lines
set formatoptions+=j


"====[ Search ]================================================================
" Start searching before pressing enter
set incsearch


"====[ Folding ]===============================================================
set foldmethod=indent
set foldnestmax=10
" don't fold by default
set nofoldenable
set foldlevel=1


"====[ Autocompletion ]========================================================
set omnifunc=syntaxcomplete#Complete
autocmd FileType python set omnifunc=python3complete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS


"====[ Panes ]=================================================================
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l


"====[ Airline ]===============================================================
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='base16_eighties'
set noshowmode
set laststatus=2
" update immediately upon leaving insert mode
if ! has('gui_running')
   set ttimeoutlen=10
    augroup FastEscape
        autocmd!
        au InsertEnter * set timeoutlen=0
        au InsertLeave * set timeoutlen=1000
    augroup END
endif


"====[ NERDTree ]==============================================================
nmap <leader>d :NERDTreeToggle<CR>


"====[ NERDCommenter ]=========================================================
nmap <D-/> ,c<space>
imap <D-/> <esc>,c<space>


"====[ NERDTree ]==============================================================
let NERDTreeShowHidden=1


"====[ Syntastic ]=============================================================
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_aggregate_errors = 1
let g:syntastic_javascript_checkers = ['eslint']

let g:jsx_ext_required = 0
