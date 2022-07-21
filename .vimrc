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
Plugin 'davidhalter/jedi-vim'

call vundle#end()

let g:ale_linters = {'rust': ['analyzer']}

let g:airline#extensions#tabline#enabled = 1

let g:rustfmt_autosave = 1
let g:rustfmt_emit_files = 1
let g:rustfmt_fail_silently = 0

" Completion
" Better completion
" menuone: popup even when there's only one match
" noinsert: Do not insert text until a selection is made
" noselect: Do not select, force user to select one from the menu
set completeopt=menuone,noinsert,noselect
" Better display for messages
set cmdheight=2
" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

syntax enable
filetype plugin indent on

let python_highlight_all = 1
