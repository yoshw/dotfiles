if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" NERD tree, for easier file browsing
Plug 'scrooloose/nerdtree'

" NERD commenter, for easier commenting
Plug 'scrooloose/nerdcommenter'
let g:NERDSpaceDelims = 1

" Surround.vim, for manipulating 'surroundings'
Plug 'tpope/vim-surround'

Plug 'tpope/vim-fugitive' " Git status

" Jellybeans colour scheme
Plug 'nanotech/jellybeans.vim'

" w0ng's hybrid colour scheme
Plug 'w0ng/vim-hybrid'
let g:hybrid_use_Xresources = 1

" get Groovy syntax highlighting in .gradle files
Plug 'tfnico/vim-gradle'

" All of your Plugins must be added before the following line
call plug#end()

"Turn on syntax highlighting
syntax on
set background=dark
"solarized colorscheme
let g:solarized_termcolors=16
let g:solarized_termtrans = 1
" colorscheme solarized
" colorscheme molokai
" colorscheme jellybeans
colorscheme hybrid

" Indentation is width-4 soft tabs by default
set expandtab
set tabstop=4
set shiftwidth=4

" shell scripts: width-2 indents
autocmd Filetype sh setlocal expandtab tabstop=2 shiftwidth=2

" makefiles: hard tabs
autocmd Filetype make setlocal noexpandtab


" turn on spell checking for Markdown files
autocmd BufRead,BufNewFile *.md setlocal spell

" Line numbers are relative, except current line
set number relativenumber

" create undo files so undo still works after close/reopen
set undofile

" Customise status line
set laststatus=2
set statusline=%t       "tail of the filename
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%{fugitive#statusline()} " git branch status
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=%y      "filetype
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ \ %P    "percent through file

" Misc key remappings
nnoremap ; :
nnoremap , ;
vnoremap ; :
vnoremap , ;

" Set basic autocomplete to Shift + Tab key
imap <S-Tab> <C-P>

" command for enabling soft line wrapping
" see http://vimcasts.org/episodes/soft-wrapping-text/
command! -nargs=* Wrap set wrap linebreak nolist
command! -nargs=* NoWrap set nowrap nolinebreak
" more line wrap settings
set colorcolumn=80

" formatting options.
" j attempts to remove comment chars when joining lines
set formatoptions=tcqj

" map keys for sensible navigation in soft line-wrapped mode
vmap <D-j> gj
vmap <D-k> gk
vmap <D-4> g$
vmap <D-6> g^
vmap <D-0> g^
nmap <D-j> gj
nmap <D-k> gk
nmap <D-4> g$
nmap <D-6> g^
nmap <D-0> g^

" mapping the <leader> key to Space.
nnoremap <space> <nop>
vnoremap <space> <nop>
let mapleader="\<space>"

" highlight searches by default; <leader><space> to clear out highlighting
set incsearch
set showmatch
set hlsearch
nnoremap <leader><leader> :noh<cr>
vnoremap <leader><leader> :noh<cr>
" get normal (Perl/Python) regex behaviour in searches
nnoremap / /\v
vnoremap / /\v
" clever searching options ... if search is all lowercase, ignore case
set ignorecase
set smartcase

" disable arrow keys, need to keep up my vim-fu"
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" keep a few lines around cursor even at top and bottom of screen
set scrolloff=2

" default encoding is UTF-8
set encoding=utf-8

" set wildchar completion mode for better command-line completion
set wildmenu
set wildmode=longest:full

" highlight line with cursor on it
set cursorline

" show commands as we enter them
set showcmd

" if focus lost, save all files
au FocusLost * :wa

" MISC <LEADER>KEY COMMANDS

" ack shortcut
nnoremap <leader>a :Ack! 
" select whatever text was just pasted
nnoremap <leader>v V`]
" run a Syntastic check
nnoremap <leader>ss :SyntasticCheck<cr>
" get rid of Syntastic error list
nnoremap <leader>sr :SyntasticReset<cr>
" open vimrc for quick editing
nnoremap <leader>ev <C-w>v<C-w>l:e $MYVIMRC<cr>
nnoremap <leader>eg <C-w>v<C-w>l:e $MYGVIMRC<cr>
" make window navigation a bit easier
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l
