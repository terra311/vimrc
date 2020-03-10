" dein settings_/_/_/_/_/_/_/_/_/_/_/_/
if &compatible
  set nocompatible
endif

set runtimepath+=~\AppData\Local\nvim\dein\repos\github.com\Shougo\dein.vim

let s:dein_dir = expand('~\AppData\Local\nvim\dein')
let s:toml_dir = expand('~\AppData\Local\nvim')
let s:dein_toml = '~\AppData\Local\nvim\dein.toml'
let s:dein_lazy_toml = '~\AppData\Local\nvim\deinlazy.toml'
let s:dein_ft_toml = '~\AppData\Local\nvim\deinft.toml'

if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir, [
      \ expand('<sfile>'), s:dein_toml, s:dein_lazy_toml, s:dein_ft_toml
      \ ])
  " Load TOML

  call dein#load_toml(s:dein_toml, {'lazy': 0})
  call dein#load_toml(s:dein_lazy_toml, {'lazy' : 1})
  call dein#load_toml(s:dein_ft_toml)


"    call dein#begin('~\AppData\Local\nvim\dein')
"
"    call dein#add('~\AppData\Local\nvim\dein\repos\github.com\Shougo\dein.vim')
"    call dein#add('Shougo/deoplete.nvim')
  call dein#end()
  call dein#save_state()
endif



if dein#check_install()
  call dein#install()
endif

filetype plugin indent on
syntax enable
" end dein settings_______________________/

set background=dark
if !has("gui_running")
    "set term=xterm
    set t_Co=256
    let &t_AB="\e[48;5;%dm"
    let &t_AF="\e[38;5;%dm"
endif

" key bindings==========
" leader
nnoremap <Space> <nop>
let mapleader = "\<Space>"
source ~\AppData\Local\nvim\mappings.vim

set backspace=indent,eol
set number
set autoindent
set tabstop=2
set shiftwidth=2
set expandtab " white space
set splitright
set hls
