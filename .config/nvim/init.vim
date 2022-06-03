" INITIALIZING
:set number
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set encoding=UTF-8

" PLUGINS
call plug#begin()

"Plug 'https://github.com/preservim/nerdtree' " NerdTree
"Plug 'https://github.com/vim-airline/vim-airline'
"Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'https://github.com/neovim/nvim-lspconfig'
"Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
"Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
"Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
"Plug 'https://github.com/cohama/lexima.vim' " Auto close '' () {} [] and such

call plug#end()


"	REMAPS
:colorscheme jellybeans


nnoremap <C-t> :NERDTreeToggle<CR>

" Ctrl + S saves file
nmap <c-s> :w<CR>
imap <c-s> <ESC>:w<CR>i<Right>

" Ctrl + Q closes file
nmap <c-q> :q<CR>
imap <c-q> <ESC>:w<CR>:q<CR>



" shift+arrow selection
nmap <S-Up> v<Up>
nmap <S-Down> v<Down>
nmap <S-Left> v<Left>
nmap <S-Right> v<Right>
vmap <S-Up> <Up>
vmap <S-Down> <Down>
vmap <S-Left> <Left>
vmap <S-Right> <Right>
imap <S-Up> <Esc>v<Up>
imap <S-Down> <Esc>v<Down>
imap <S-Left> <Esc>v<Left>
imap <S-Right> <Esc>v<Right>

" copy, pasting and cutting shotcuts
"vmap <C-c> y<Esc>i
"vmap <C-x> d<Esc>i
"map <C-v> pi
"imap <C-v> <Esc>pi
"imap <C-z> <Esc>ui

" Toggling Tagbar
nmap <F8> :TagbarToggle<CR>

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="-"
