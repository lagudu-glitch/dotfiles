" Author: Vishnu Lagudu
" Liscence: can be copied no credit required

set nocompatible                  " Use VIM settings not vi; ** THIS MUST FIRST IN .VIMRC ** 

" General Settings
set bg=dark                       " Set background to dark
set expandtab                     " expands tab keypresses into spaces
set colorcolumn=90                " show red line as a gentle suggestion to keep lines short
set ignorecase                    " search commands are case-insensitive
set incsearch                     " while typing a search command, show matches incrementally
                                  " instead of waiting for you to press enter
set ts=2                          " set tabspace to 2
set sw=2                          " sets number of spaces with autoindent
set mouse=a                       " enable mouse interaction
set nu                            " show or turn on line numbers
set relativenumber                " show or turn on relative lines numbers
set sm                            " shows matching brackets while typing
set ruler                         " shows column and line number of cursor
set showcmd                       " shows the latest commands that have been typed
set laststatus=2                  " displays the status line of file
colorscheme desert                " set the colorscheme
syntax on                         " turn on syntax highlighting
filetype plugin indent on         " tells vim to recognize the filetype
