" ------------------------------------------------------------------------------
" Basic Setting
" ------------------------------------------------------------------------------
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
" Swap iTerm2 cursors in vim insert mode when using tmux
" ------------------------------------------------------------------------------
if exists('$ITERM_PROFILE')
    if exists('$TMUX')
        let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
        let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
    else
        let &t_SI = "\<Esc>]50;CursorShape=1\x7"
        let &t_EI = "\<Esc>]50;CursorShape=0\x7"
    endif
endif


" ------------------------------------------------------------------------------
" Taglist
" ------------------------------------------------------------------------------
let Tlist_Use_LEFT_Window=1
let Tlist_File_Fold_Auto_Close=1
let Tlist_Show_One_File=1
let Tlist_GainFocus_On_ToggleOpen=1
let Tlist_Exit_OnlyWindow=1

nmap tl :Tlist<cr>
nmap <silent> <F12> :A<CR>


" ------------------------------------------------------------------------------
" Make Vim Configuration Easier
" ------------------------------------------------------------------------------
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>


" ------------------------------------------------------------------------------
" Clang Complete
" ------------------------------------------------------------------------------
let g:clang_complete_copen=1
let g:clang_periodic_quickfix=1
let g:clang_snippets=1
let g:clang_close_preview=1
let g:clang_use_library=1
let g:clang_library_path='/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/libclang.dylib'
let g:clang_user_options='-stdlib=libc++ -std=c++11 -IIncludePath'


" ------------------------------------------------------------------------------
" Pathogen
" ------------------------------------------------------------------------------
execute pathogen#infect()


" ------------------------------------------------------------------------------
" NERD Tree
" ------------------------------------------------------------------------------
nnoremap <leader>n :NERDTreeToggle<cr>

let NERDTreeShowHidden=1

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" ------------------------------------------------------------------------------
" Powerline
" ------------------------------------------------------------------------------
set laststatus=2


" ------------------------------------------------------------------------------
" CtrlP
" ------------------------------------------------------------------------------
nnoremap <leader>fu :CtrlPFunky<cr>
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>

let g:ctrlp_funky_matchtype = 'path'
let g:ctrlp_funky_syntax_highlight = 1

set wildignore+=*.a,*.o,*.d



