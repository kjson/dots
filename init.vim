call plug#begin('~/.vim/plugged')

" TODO
" * Moving from a terminal buffer to another buffer doesn't work.

" Simple alignment tool.
Plug 'junegunn/vim-easy-align'

" Sensible defaults.
Plug 'tpope/vim-sensible'

" Navigation.
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'terryma/vim-multiple-cursors'

" A command-line fuzzy finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'  " TODO


" Distraction-free writing in Vim
Plug 'junegunn/goyo.vim'

" Git stuff.
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/gv.vim'

" Line number stuff
Plug 'jeffkreeftmeijer/vim-numbertoggle'


Plug 'tpope/vim-commentary'  " gc to comment out something.

" Scala support.
Plug 'ensime/ensime-vim', { 'do': ':UpdateRemotePlugins' } " if Neovim

" Completion
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'tbodt/deoplete-tabnine', { 'do': './install.sh' }


" Languages
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'deoplete-plugins/deoplete-go', { 'do': 'make'}


" Colors
Plug 'arcticicestudio/nord-vim'
" Powerline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Python
Plug 'deoplete-plugins/deoplete-jedi'

" TMUX vim support
Plug 'christoomey/vim-tmux-navigator'


" Initialize plugin system
call plug#end()

" General stuff
syntax on
colorscheme nord
set noswapfile
set number relativenumber
nmap ; :


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

" Deocomplete
" TODO this doesn't seem to work.
let g:deoplete#enable_at_startup = 1

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" FZF
map <C-p> :Files<CR>
map <C-s> :Ag<CR>

" multiple cursors
let g:multi_cursor_use_default_mapping=0

" Default mapping
let g:multi_cursor_start_word_key      = '<C-d>'
let g:multi_cursor_select_all_word_key = '<A-d>'
let g:multi_cursor_start_key           = 'g<C-d>'
let g:multi_cursor_select_all_key      = 'g<A-d>'
let g:multi_cursor_next_key            = '<C-d>'
" let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'


" Goyo
map <C-g> :Goyo<CR>
