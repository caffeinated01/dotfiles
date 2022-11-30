"Basic nvim config
:set number
:set expandtab
:set autoindent
:set smarttab
:set mouse=a
:syntax enable

"Plugins
call plug#begin('~/.config/nvim/plugged')
Plug 'https://github.com/vim-airline/vim-airline' "Status bar
Plug 'https://github.com/preservim/nerdtree' "File manager
Plug 'https://github.com/jiangmiao/auto-pairs' "Auto bracket pairs
Plug 'https://github.com/neoclide/coc.nvim' "Autocompletion
Plug 'catppuccin/nvim', { 'as': 'catppuccin' } "Catppuccin theme
call plug#end()

set encoding=UTF-8

"Keybinds
"Nerdtree
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-l> :NERDTreeToggle<CR>

:colorscheme catppuccin
