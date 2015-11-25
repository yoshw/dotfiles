" turn off ugly antialiasing!
set guifont=Inconsolata\ Medium\ 12

" turn off unnecessary scrollbars
set guioptions-=rL

" Load NERDTree and Taglist when entering gVim
let NERDTreeShowLineNumbers=1
autocmd GUIEnter * NERDTree
let Tlist_Use_Right_Window=1
" autocmd GUIEnter * :TlistOpen
