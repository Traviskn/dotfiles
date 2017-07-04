"====[ Plugin manager ]========================================================
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-sensible'

Plugin 'tpope/vim-unimpaired'

Plugin 'tpope/vim-fugitive'

Plugin 'tpope/vim-surround'

Plugin 'tpope/vim-fireplace'

Plugin 'w0rp/ale'

Plugin 'scrooloose/nerdtree'

Plugin 'scrooloose/nerdcommenter'

Plugin 'junegunn/fzf'

Plugin 'junegunn/fzf.vim'

Plugin 'jiangmiao/auto-pairs'

Plugin 'airblade/vim-gitgutter'

Plugin 'Valloric/YouCompleteMe'

Plugin 'mbbill/undotree'

Plugin 'terryma/vim-multiple-cursors'

Plugin 'AndrewRadev/splitjoin.vim'

Plugin 'bronson/vim-trailing-whitespace'

Plugin 'Yggdroot/indentLine'

Plugin 'chriskempson/base16-vim'

Plugin 'chriskempson/vim-tomorrow-theme'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'ryanoasis/vim-devicons'

Plugin 'mattn/emmet-vim'

Plugin 'sheerun/vim-polyglot'

Plugin 'ternjs/tern_for_vim'

Plugin 'tmux-plugins/vim-tmux'

Plugin 'tmux-plugins/vim-tmux-focus-events'

Plugin 'christoomey/vim-tmux-navigator'

Plugin 'benmills/vimux'

call vundle#end()


"====[ Leader ]================================================================
let mapleader=","


"====[ Syntax highlighting and colors ]========================================
colorscheme base16-default-dark
filetype plugin indent on
syntax on
set background=dark
set t_Co=256
set number
set cursorline

" JavaScript specific syntax rules
let g:vim_json_syntax_conceal = 0
let g:jsx_ext_required = 0
let g:javascript_plugin_flow = 1

" Markdown specific syntax rules
let g:vim_markdown_conceal = 0


"====[ Whitespace ]============================================================
" make tabs, trailing spaces, and end of lines visible characters
set listchars=tab:▸\ ,trail:.,eol:¬
set list
" set color of tab, trailing space, and end-of-line chars to be close to the background color
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59
" toggle whitespace character visibility
nmap <leader>l :set list!<CR>


"====[ Cursor ]================================================================
" box in normal/visual, vertical line in insert, underline in replace
let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"

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
set incsearch
set grepprg=ag\ --vimgrep
map <C-p> :Files<CR>
map <leader>f :Ag<CR>
set wildignore+=*/node_modules/*,*.swp

"====[ Folding ]===============================================================
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=1


"====[ Autocompletion ]========================================================
set omnifunc=syntaxcomplete#Complete
set completeopt=longest,menuone
let g:user_emmet_expandabbr_key='<Tab>'
let g:ycm_add_preview_to_completeopt = 0


"====[ Saving ]================================================================
nnoremap <Leader>w :w<CR>
nnoremap <Leader>x :x<CR>
nnoremap <Leader>q :q<CR>


"====[ Panes ]=================================================================
" splitting
nnoremap vv  :vsplit<CR>
nnoremap ss  :split<CR>
" navigating
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
" Automatically resize splits when window is resized
au VimResized * exe "normal! \<c-w>="


"====[ Move Lines ]============================================================
" ALT + j/k to move lines down/up
nmap ∆ :m .+1<CR>==
nmap ˚ :m .-2<CR>==
imap ∆ <Esc>:m .+1<CR>==gi
imap ˚ <Esc>:m .-2<CR>==gi
vmap ∆ :m '>+1<CR>gv=gv
vmap ˚ :m '<-2<CR>gv=gv
" Automatically reselect block on indent/outdent
vnoremap < <gv
vnoremap > >gv


"====[ Clipboard ]=============================================================
" use the system clipboard
set clipboard=unnamed

"====[ Airline ]===============================================================
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='base16'
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
let NERDTreeShowHidden=1
nmap <leader>d :NERDTreeToggle<CR>
nmap <leader>D :NERDTreeFind<CR>


"====[ Linter ]================================================================
set statusline+=%#warningmsg#
set statusline+=%{ALEGetStatusLine()}
set statusline+=%*


"====[ Vimux ]=================================================================
map <Leader>vp :VimuxPromptCommand<CR>
