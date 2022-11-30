:set autoindent
:set smarttab
:set ff=unix
:set nu
:let g:NERDTreeWinSize=20
:set mouse=a
:set incsearch
:set encoding=UTF-8
:set guifont=DroidSansMono\ Nerd\ Font\ 8
nnoremap <C-f> :resize<CR>
nnoremap <C-g> :NERDTreeToggle<CR>
nnoremap <C-t> :tabnew <CR>:NERDTree<CR>
nnoremap <C-Delete> :tabclose<CR>
nnoremap <C-x> :rightbelow new<CR>:terminal<CR>:resize 10<CR>
nnoremap <C-h> :rightbelow new ~/.config/nvim/keybinds.txt<CR>:resize 6<CR>
nnoremap <C-c> :tabn <CR>
nnoremap <C-a> :set wrap <CR> :set linebreak <CR>
nnoremap <C-o> :set nowrap <CR> :set linebreak <CR>
nnoremap <C-z> :u <CR>
nnoremap <C-u> :redo <CR>
nnoremap <M-T> :rightbelow new ~/TODOS/TODOs <CR>
inoremap <silent><expr> <C-e> coc#pum#visible() ? coc#pum#cancel() : "\<C-e>"
inoremap <silent><expr> <C-y> coc#pum#visible() ? coc#pum#confirm() : "\<C-y>"


" Use <c-f><c-f> to start the prompt, use <c-f>iw to pre-fill with the current word
" or other text-objects. Try <plug>(esearch-exec) to start a search instantly.
nmap <c-s><c-s> <plug>(esearch)
map  <c-s>      <plug>(operator-esearch-prefill)

let g:esearch = {}

" Use regex matching with the smart case mode by default and avoid matching text-objects.
let g:esearch.regex   = 1
let g:esearch.textobj = 0
let g:esearch.case    = 'smart'

" Set the initial pattern content using the highlighted '/' pattern (if
" v:hlsearch is true), the last searched pattern or the clipboard content.
let g:esearch.prefill = ['hlsearch', 'last', 'clipboard']

" Override the default files and directories to determine your project root. Set it
" to blank to always use the current working directory.
let g:esearch.root_markers = ['.git', 'Makefile', 'node_modules']

" Prevent esearch from adding any default keymaps.
let g:esearch.default_mappings = 0

" Start the search only when the enter is hit instead of updating the pattern while you're typing.
let g:esearch.live_update = 0

" Open the search window in a vertical split and reuse it for all further searches.
let g:esearch.name = '[esearch]'
let g:esearch.win_new = {esearch -> esearch#buf#goto_or_open(esearch.name, 'vnew')}

" Redefine the default highlights (see :help highlight and :help esearch-appearance)
highlight      esearchHeader     cterm=bold gui=bold ctermfg=white ctermbg=white
highlight link esearchStatistics esearchFilename
highlight link esearchFilename   Label
highlight      esearchMatch      ctermbg=27 ctermfg=15 guibg='#005FFF' guifg='#FFFFFF'


call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
set nowrap
command CLI rightbelow new | resize 10 | terminal
let g:neoformat_try_node_exe = 1
set guicursor+=i-:blinkon5
autocmd VimEnter * NERDTree
autocmd VimEnter * hi NonText guifg=NONE guibg=NONE ctermbg=none
autocmd VimEnter * hi Normal guifg=NONE guibg=NONE ctermbg=none
Plug  'eugen0329/vim-esearch'
Plug 'sbdchd/neoformat'
Plug 'PhilRunninger/nerdtree-visual-selection'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ryanoasis/vim-devicons'
call plug#end()
:colorscheme tokyonight
hi NonText guifg=NONE guibg=NONE ctermbg=none
hi Normal guifg=NONE guibg=NONE ctermbg=none
