set nocompatible
set encoding=utf-8
filetype off

nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

:set number

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'valloric/youcompleteme'
Plugin 'dense-analysis/ale'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
Plugin 'rust-lang/rust.vim'

call vundle#end()

let g:ale_linters = {'rust': ['analyzer']}

let g:airline#extensions#tabline#enabled = 1

let g:rustfmt_autosave = 1
let g:rustfmt_emit_files = 1
let g:rustfmt_fail_silently = 0

syntax enable
filetype plugin indent on
