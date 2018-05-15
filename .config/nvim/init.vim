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
set wildmode=longest,list
set cursorline
set noundofile
set noswapfile
set nobackup
set showtabline=2
set background=light
set number
set expandtab
set tabstop=2  "タブを表示するとき
set shiftwidth=2  "タブを挿入するとき

"ESC2回でハイライト切り替え
nnoremap <silent><Esc><Esc> :<C-u>set nohlsearch!<CR>

"dein Scripts-----------------------------
if &compatible
set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.cache/dein')
	call dein#begin('~/.cache/dein')

	" Let dein manage dein
	" Required:
	call dein#add('~/.cache/dein')

	" Add or remove your plugins here:
	call dein#load_toml('~/.config/nvim/dein.toml',{'lazy':0})
	call dein#load_toml('~/.config/nvim/dein_lazy.toml',{'lazy':1})

	" Required:
	call dein#end()
	call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
	call dein#install()
endif

"End dein Scripts-------------------------
set background=dark
colorscheme solarized

augroup typescript_loading
	autocmd!
	autocmd BufRead,BufNewFile *.ts set filetype=typescript
	autocmd BufRead,BufNewFile *.tsx set filetype=typescript
augroup END

augroup toml
	autocmd!
	autocmd BufRead,BufNewFile *.toml set filetype=toml
augroup END
