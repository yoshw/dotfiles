" start MacVim in fullscreen
set fullscreen
" turn off ugly antialiasing!
set noantialias
set guifont=Andale\ Mono:h13

" turn off unnecessary scrollbars
set guioptions-=rL

" Load NERDTree and Taglist when entering macvim
let NERDTreeShowLineNumbers=1
autocmd GUIEnter * NERDTree
let Tlist_Use_Right_Window=1
" autocmd GUIEnter * :TlistOpen
