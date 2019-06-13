" vim: filetype=vim
" __     _____ __  __ ____   ____ 
" \ \   / /_ _|  \/  |  _ \ / ___|
"  \ \ / / | || |\/| | |_) | |    
"   \ V /  | || |  | |  _ <| |___ 
"    \_/  |___|_|  |_|_| \_\\____|
"
" Конфигурационный файл Vim & Neovim
" Написан: @alexandrovich.ff
" Website: http://malikov.red

" --- Плагины ---
call plug#begin(('~/.config/nvim/plugged'))

    Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
    Plug 'jiangmiao/auto-pairs'
    Plug 'kien/ctrlp.vim'
    Plug 'itchyny/lightline.vim'
    Plug 'mhinz/vim-startify'
    Plug 'bagrat/vim-workspace'
    Plug 'francoiscabrol/ranger.vim'
    Plug 'rbgrouleff/bclose.vim'
    Plug 'junegunn/limelight.vim'
    Plug 'junegunn/goyo.vim'
    Plug 'haya14busa/is.vim'
    " Типы файлов
    Plug 'cakebaker/scss-syntax.vim'
    Plug 'chr4/nginx.vim'
    Plug 'chrisbra/csv.vim'
    Plug 'ekalinin/dockerfile.vim'
    Plug 'elixir-editors/vim-elixir'
    Plug 'elzr/vim-json'
    Plug 'Glench/Vim-Jinja2-Syntax'
    Plug 'godlygeek/tabular' | Plug 'plasticboy/vim-markdown'
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
    Plug 'lifepillar/pgsql.vim'
    Plug 'othree/html5.vim'
    Plug 'pangloss/vim-javascript'
    Plug 'PotatoesMaster/i3-vim-syntax'
    Plug 'tpope/vim-git'
    Plug 'tpope/vim-liquid'
    Plug 'tpope/vim-rails'
    Plug 'vim-python/python-syntax'
    Plug 'vim-ruby/vim-ruby'
    Plug 'wgwoods/vim-systemd-syntax'
    " Цветовая схема
    Plug 'morhetz/gruvbox'
    Plug 'NLKNguyen/papercolor-theme'
call plug#end()

" --- Основные параметры ---
syntax on
set encoding=utf-8
set number relativenumber
set clipboard=unnamedplus

filetype plugin on
set omnifunc=syntaxcomplete#Complete

set tabstop=8
set expandtab
set shiftwidth=4
set autoindent
set smartindent

set nowrap

set hlsearch
set incsearch

set encoding=utf-8

"colorscheme PaperColor
"set background=light

" --- Параметры для плагинов ---
" Ranger
let g:NERDTreeHijackNetrw = 0
let g:ranger_replace_netrw = 1
let g:ranger_map_keys = 0
" LimeLight
let g:limelight_conceal_ctermfg = 244
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

" --- Назначение клавиш ---
map <C-n> :NERDTreeToggle<CR>
map <C-s> :Startify<CR>
map <leader>f :Ranger<CR>
map <C-l> :Limelight!! [0.0 ~ 1.0]<CR>
map <Leader><Space> :let @/=''<CR>
