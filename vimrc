if has('win32')&&!has('win64')
  let curl_exists=expand('C:\Windows\Sysnative\curl.exe')
else
  let curl_exists=expand('curl')
endif

" ***** Plug install packages *****
" Required:
call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'vim-scripts/grep.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'fatih/vim-go'
if v:versioin >= 801
    " lsp settings supports vim-8 and higher
    Plug 'prabirshrestha/vim-lsp'
    Plug 'mattn/vim-lsp-settings'
endif

if isdirectory('/usr/local/opt/fzf')
  Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
else
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
  Plug 'junegunn/fzf.vim'
endif

call plug#end()
" ***** Plug install packages *****


" Leader key
let mapleader = " "

" Basic Setup
syntax on
let python_highlight_all = 1
filetype indent on
set laststatus=2
set scrolloff=8
set cursorline

" FileType indent
filetype plugin indent on
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType python setlocal ts=4 sts=4 sw=4 expandtab
autocmd FileType go setlocal ts=4 sts=4 sw=4 expandtab

" Visual Settings
set number
set relativenumber
set visualbell

" Remaps
map <leader>n :call ToggleNumbering()<CR>
map <leader>h :noh<CR>
map <leader>p :set paste!<CR>


" Terminal emulation
nnoremap <silent> <leader>sh :terminal<CR>

" Indent/unindent with tab/s-tab
set ts=4 sts=4 sw=4 expandtab
set smartindent
nmap <Tab> >>
nmap <S-Tab> <<
imap <S-Tab> <Esc><<i
vmap <Tab> >gv
vmap <S-Tab> <gv

" Files
set noswapfile

" Search
set incsearch
set modifiable
set showcmd

" Centers search results
nnoremap n nzzzv
nnoremap N Nzzzv

" Panes
nmap <C-t> :tabe
nmap <C-h> gT
nmap <C-l> gt

" ***** Custom Functions *****
function! ToggleNumbering()
    set norelativenumber!
    set nonumber!
endfunction


" vim-airline
let g:airline_theme = 'murmur'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_skip_empty_sections = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
