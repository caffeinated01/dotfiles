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

"Tabs
nnoremap <C-t> :tabnew<CR>
nnoremap <C-w> :tabc<CR>
nnoremap <C-l> :tabn<CR>
nnoremap <C-k> :tabp<CR>

"Nerdtree
nnoremap <C-m> :NERDTreeToggle<CR>

:colorscheme catppuccin
