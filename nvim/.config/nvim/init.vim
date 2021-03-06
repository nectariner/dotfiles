"Neovim config - Fred Cook

set nocompatible

" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall
endif

"Plugins
call plug#begin('~/.config/nvim/plugged')
    "Colourschemes
    Plug 'romgrk/doom-one.vim'
    Plug 'arcticicestudio/nord-vim'
    Plug 'rakr/vim-one'

    Plug 'sheerun/vim-polyglot'
    Plug 'vim-airline/vim-airline'
    Plug 'wakatime/vim-wakatime'
    Plug 'tpope/vim-surround'

    Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': ':UpdateRemotePlugins'}

    Plug 'vim-syntastic/syntastic'
    Plug 'airblade/vim-gitgutter'
    Plug 'frazrepo/vim-rainbow'

    Plug 'jiangmiao/auto-pairs'
    "language support
"    Plug 'ycm-core/YouCompleteMe'
	Plug 'pboettch/vim-cmake-syntax'

	Plug 'vimwiki/vimwiki'

call plug#end()

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
    if (has("nvim"))
        "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
        let $NVIM_TUI_ENABLE_TRUE_COLOR=1
    endif
    "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
    "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
    " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
    if (has("termguicolors"))
        set termguicolors
    endif
endif

"Appearance
let g:airline_theme='one'
set t_Co=256
color one
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE
set number
syntax on

"syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"Formatting"
set tabstop=4
set smarttab
set shiftwidth=4
"set expandtab
set smartcase

"vim-gitgutter
function! GitStatus()
  let [a,m,r] = GitGutterGetHunkSummary()
  return printf('+%d ~%d -%d', a, m, r)
endfunction
set statusline+=%{GitStatus()}

"rainbow
let g:rainbow_active = 1

"set clipboard=unnamedplus
set clipboard^=unnamed,unnamedplus

"open file where it was last closed
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

filetype plugin on
syntax on

"Keybinds
"Easier split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

tnoremap <ESC> <C-\><C-N>
