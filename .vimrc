set background=dark
set nocompatible

" Set tabs, Smartcomp default = 3 spaces
set tabstop=3
set softtabstop=3
set shiftwidth=3
set expandtab
set mouse=n
set nowrap

" Auto indent after a {
set autoindent
set smartindent

" Jump 5 lines when running out of the screen
set scrolljump=5
" Put cursor in middle of the screen
set scrolloff=999
" Use a line under the cursor
set cursorline
hi cursorline guibg=#333333
hi CursorColumn guibg=#333333

" Linewidth to endless
set textwidth=0

" Map <CTRL>-B to run PHP parser check
noremap <C-B> :!php -l %<CR>

" The completion dictionary is provided by Rasmus:
" http://lerdorf.com/funclist.txt
set dictionary-=/home/justin/funclist.txt dictionary+=/home/justin/funclist.txt
" Use the dictionary completion
set complete-=k complete+=k

au BufWinLeave * mkview
au BufWinEnter * silent loadview

set list
set listchars=tab:>-,trail:-
" set listchars=tab:>-,trail:-,eol:$
set ignorecase                  " caseinsensitive searches
set showmode                    " always show command or insert mode
set ruler                      " show line and column information
set showmatch                  " show matching brackets
set formatoptions=tcqor
set whichwrap=b,s,<,>,[,]
syntax on

" Folding {
set foldenable " Turn on folding
set foldmarker={,} " Fold C style code (only use this as default if you use a high foldlevel)
set foldmethod=marker " Fold on the marker
set foldlevel=2 " Don't autofold anything (but I can still fold manually)
set foldopen=block,hor,mark,percent,quickfix,tag " what movements open folds 
function SimpleFoldText() " {
  return getline(v:foldstart).' '
endfunction " }
set foldtext=SimpleFoldText() " Custom fold text function (cleaner than default)


highlight Comment cterm=italic

" Search stuff
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

" Use relative line numbers
set rnu
