" ~/.vimrc
" Lisa McCutcheon
" Wed Feb 07, 2007

" **************************************
" * VARIABLES
" **************************************
silent !stty -ixon
set nocompatible		" get rid of strict vi compatibility!
set nu				" line numbering on
set autoindent			" autoindent on
set noerrorbells		" bye bye bells :)
set modeline			" show what I'm doing
set showmode			" show the mode on the dedicated line (see above)
set nowrap			" no wrapping!
set ignorecase			" search without regards to case
set backspace=indent,eol,start	" backspace over everything
set fileformats=unix,dos,mac	" open files from mac/dos
set exrc			" open local config files
set nojoinspaces		" don't add white space when I don't tell you to
set ruler			" which line am I on?
set showmatch			" ensure Dyck language
set incsearch			" incremental searching
set nohlsearch			" meh
set bs=2			" fix backspacing in insert mode
set bg=light
set wildmenu
set guifont=Monospace\ 13
:let mapleader=","
" Expand tabs in C files to spaces
au BufRead,BufNewFile *.{c,h,java,cpp,hpp} set expandtab
au BufRead,BufNewFile *.{c,h,java,cpp,hpp} set shiftwidth=2
au BufRead,BufNewFile *.{c,h,java,cpp,hpp} set tabstop=2

" Do not expand tabs in assembly file.  Make them 8 chars wide.
au BufRead,BufNewFile *.s set noexpandtab
au BufRead,BufNewFile *.s set shiftwidth=8
au BufRead,BufNewFile *.s set tabstop=8

" Show syntax
syntax on

" This is my prefered colorscheme, open a file with gvim to view others
:colors desert

:let mapleader=","
" For switching between many opened file by using ctrl+l or ctrl+h
map <C-J> :next <CR>
map <C-K> :tabNext <CR>
nmap <c-s> :wq<CR>

nnoremap <Leader><left>  :tabprevious<CR>
nnoremap <Leader><right> gt<CR>
nnoremap <Leader>n :tabnew 
nnoremap <Leader><space> :nohlsearch<CR>
" Spelling toggle via F10 and F11
map <F10> <Esc>setlocal spell spelllang=en_us<CR>
map <F11> <Esc>setlocal nospell<CR>
" setlocal textwidth=80		" used for text wrapping
