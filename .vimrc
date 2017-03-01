set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'moorereason/vim-markdownfmt'
let g:markdownfmt_autosave=1

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

syntax on
set number
set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4
set smartindent
set fileencodings=utf8,gbk
set clipboard=unnamedplus
let g:gofmt_command ="goimports"

"for color
"set background=dark
"colorscheme solarized

"for go
autocmd BufWritePre *.go :Fmt

if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

augroup filetype
    autocmd! BufRead,BufNewFile BUILD set filetype=blade
augroup end

augroup filetype
   au! BufRead,BufNewFile *.proto setfiletype proto
augroup end

augroup filetype
   au! BufRead,BufNewFile *.wsgi setfiletype python
augroup end



