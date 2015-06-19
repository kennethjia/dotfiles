" ------------------------------------------------------------------------------

" Basic Setting

let mapleader=","

colorscheme desert
set t_Co=256

filetype plugin indent on
syntax on

set backspace=indent,eol,start
set nocompatible
set nobackup

set expandtab
set tabstop=4
set cindent shiftwidth=4

set nowrap

set ru
set number

set hlsearch

set list
set listchars=tab:>>,trail:-

set cc=101

" ------------------------------------------------------------------------------

" Taglist
let Tlist_Use_LEFT_Window=1
let Tlist_File_Fold_Auto_Close=1
let Tlist_Show_One_File=1
let Tlist_GainFocus_On_ToggleOpen=1
let Tlist_Exit_OnlyWindow=1

nmap tl :Tlist<cr>
nmap <silent> <F12> :A<CR>

" ------------------------------------------------------------------------------

" Make Vim Configuration Easier
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" ------------------------------------------------------------------------------

" Clang Complete
let g:clang_complete_copen=1
let g:clang_periodic_quickfix=1
let g:clang_snippets=1
let g:clang_close_preview=1
let g:clang_use_library=1
let g:clang_library_path='/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/libclang.dylib'
let g:clang_user_options='-stdlib=libc++ -std=c++11 -IIncludePath'

" ------------------------------------------------------------------------------

" Pathogen
execute pathogen#infect()

" ------------------------------------------------------------------------------

" NERD Tree
nnoremap <leader>> :NERDTree<cr>
nnoremap <leader>< :NERDTreeClose<cr>
let NERDTreeShowHidden=1

" ------------------------------------------------------------------------------

" Powerline
set laststatus=2

" ------------------------------------------------------------------------------
