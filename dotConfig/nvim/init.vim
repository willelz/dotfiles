set encoding=utf-8
"読み込み時の文字コード
set fileencodings=utf-8,euc-jp,sjis,cp932,iso-2022-jp
"保存時の文字コード
set fileencoding=utf-8
"改行コード判別
set fileformats=unix,dos,mac
"○が崩れないように
set ambiwidth=double
set incsearch
set wildmenu
set wildmode=longest:full,full
set cursorline
set noundofile
set noswapfile
set nobackup
set showtabline=2
set number
set expandtab
set tabstop=2  "タブを表示するとき
set shiftwidth=2  "タブを挿入するとき

set breakindent

"デフォルトプラグインを止める
let g:loaded_gzip              = 1
let g:loaded_tar               = 1
let g:loaded_tarPlugin         = 1
let g:loaded_zip               = 1
let g:loaded_zipPlugin         = 1
let g:loaded_rrhelper          = 1
let g:loaded_2html_plugin      = 1
let g:loaded_vimball           = 1
let g:loaded_vimballPlugin     = 1
let g:loaded_getscript         = 1
let g:loaded_getscriptPlugin   = 1
let g:loaded_netrw             = 1
let g:loaded_netrwPlugin       = 1
let g:loaded_netrwSettings     = 1
let g:loaded_netrwFileHandlers = 1

"ESC2回でハイライト切り替え
nnoremap <silent><Esc><Esc> :<C-u>set nohlsearch!<CR>

"dein Scripts-----------------------------
if &compatible
set nocompatible
endif

set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
	call dein#begin('~/.cache/dein')

	call dein#load_toml('~/.config/nvim/dein.toml',{'lazy':0})
	call dein#load_toml('~/.config/nvim/dein_lazy.toml',{'lazy':1})

	call dein#end()
	call dein#save_state()
endif

filetype plugin indent on
syntax enable

if dein#check_install()
	call dein#install()
endif

"End dein Scripts-------------------------
set background=dark
colorscheme solarized
