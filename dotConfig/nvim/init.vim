"読み込み時の文字コード
set fileencodings=utf-8,euc-jp,sjis,cp932,iso-2022-jp
"保存時の文字コード
set fileencoding=utf-8
"改行コード判別
set fileformats=unix,dos,mac
"○が崩れないように
set ambiwidth=double
set incsearch
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
set termguicolors
set mouse=

tnoremap <Esc> <C-\><C-n>

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

nnoremap yss "+yy
let g:skk_yank = v:false
command SKKON let g:skk_yank = v:true

command! Erc e ~/.config/nvim/init.vim
command! Eml e ~/.config/nvim/dein.toml
command! Ell e ~/.config/nvim/dein_lazy.toml

augroup init.vim
  autocmd!
  autocmd BufWinEnter dein.toml,dein_lazy.toml call dein#toml#syntax()
  autocmd InsertLeave * if g:skk_yank | let @+ = getline('.') | endif
  autocmd User skkeleton-mode-changed call s:kata()
augroup END

function s:kata()
  if g:skkeleton#mode ==# 'hira'
    call skkeleton#register_keymap('input', "q", 'katakana')
  elseif g:skkeleton#mode ==# 'kata'
    call skkeleton#register_keymap('input', "q", '')
  endif
endfunction

if exists('$TOKEN_FOR_DEIN')
  let g:dein#install_github_api_token = $TOKEN_FOR_DEIN
endif

let g:dein#install_progress_type = 'floating'
let g:dein#types#git#enable_partial_clone = v:true
let g:dein#enable_notification = v:true

"dein Scripts-----------------------------
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
colorscheme solarized8

