execute pathogen#infect()

syntax on
filetype plugin indent on
set number

syntax enable

set tabstop=4
set softtabstop=4
set expandtab

filetype indent on
set wildmenu
set hlsearch

nnoremap j gj
nnoremap k gk

python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
set laststatus=2 " Always display the statusline in all windows
set showtabline=2 " Always display the tabline, even if there is only one tab
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
set t_Co=256
