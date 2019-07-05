" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')


" Simple alignment tool.
Plug 'junegunn/vim-easy-align'

" Sensible defaults.
Plug 'tpope/vim-sensible'

" Navigation.
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" A command-line fuzzy finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Distraction-free writing in Vim
Plug 'junegunn/goyo.vim'

" Git stuff.
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'


" Initialize plugin system
call plug#end()


""" Alignment.

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)


""" Navigation

" Open nerd tree with Ctrl+n
map <C-n> :NERDTreeToggle<CR>

" Start goyo mode
" map
