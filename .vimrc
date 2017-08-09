set nocompatible " cause who needs vi
filetype off " required, will turn back on later

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" ========================================================
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'

" Fuzzy finder
Plugin 'kien/ctrlp.vim'

" Support for easily toggling comments.
Plugin 'tpope/vim-commentary'

" Just a ton of color schemes.
" https://github.com/flazz/vim-colorschemes#current-colorschemes
Plugin 'flazz/vim-colorschemes'

" Wicked status-bar
Plugin 'vim-airline/vim-airline'

Plugin 'tpope/vim-surround'

" Auto close pairs
Plugin 'jiangmiao/auto-pairs'

" Ruby String interpolation
Plugin 'p0deje/vim-ruby-interpolation'

Plugin 'ntpeters/vim-better-whitespace'

Plugin 'vim-ruby/vim-ruby'

" Proper JSON filetype detection, and support.
Plugin 'leshill/vim-json'

" proper indent support for js
Plugin 'pangloss/vim-javascript'

Plugin 'othree/html5.vim'

" vim indents HTML very poorly on it's own. This fixes a lot of that.
Plugin 'indenthtml.vim'

" ========================================================
" All of your Plugins must be added before the following line
call vundle#end()            " required


" have to turn this stuff back on if we want all of our features.
filetype plugin indent on " Filetype auto-detection
syntax on " Syntax highlighting

" speed up ruby files by using old regex matcher
set re=1

" yank and paste with the system clipboard
set clipboard=unnamed

" display line numbers
set number

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab " use spaces instead of tabs.
set smarttab " let's tab key insert 'tab stops', and bksp deletes tabs.
set shiftround " tab / shifting moves to closest tabstop.
set autoindent " Match indents on new lines.
set smartindent " Intellegently dedent / indent new lines based on rules.

" We have VC -- we don't need this stuff.
set nobackup " We have vc, who needs this..
set nowritebackup " We have vc, we don't need backups.
set noswapfile " So annoying!

set autoread " when a file has changed on disk, just load it. Don't ask.

" In many terminal emulators the mouse works just fine, thus enable it.
  if has('mouse')
     set mouse=a
      endif

" Make search more sane
set ignorecase " case insensitive search
set smartcase " If there are uppercase letters, become case-sensitive.
set incsearch " live incremental searching
set showmatch " live match highlighting
" set hlsearch " highlight matches
set gdefault " use the `g` flag by default.

" allow the cursor to go anywhere in visual block mode.
set virtualedit+=block

let mapleader = " "

" Space e - File Explorer
map <leader>e :Explore<cr>

" So we don't have to reach for escape to leave insert mode.
inoremap jj <esc>

" show relative line numbers
" THIS REALLY SLOWS VIM DOWN BECAUSE OF MY HIGH KEY REPEAT SETTINGS
" only turn on when feel like it
" set rnu

" delete stuff without putting stuff into buffer
nnoremap <leader>d "_d
vnoremap <leader>d "_d

" delete and paste stuff in current buffer
vnoremap <leader>p "_dP

" theme
colorscheme monokai-refined

" 256 colors
set t_Co=256

" Make those binding.pry statements painfully obvious
au BufEnter *.rb syn match error contained "\<binding.pry\>"
au BufEnter *.rb syn match error contained "\<byebug\>"

" no background color for line numbers
highlight clear LineNr

" make line numbers grey
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

" create new vsplit, and switch to it.
noremap <leader>v <C-w>v


" bindings for easy split nav
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Visual line nav, not real line nav
" If you wrap lines, vim by default won't let you move down one line to the
" wrapped portion. This fixes that.
noremap j gj
noremap k gk

set backspace=indent,eol,start

" Space b - binding.pry
nnoremap <leader>r obinding.pry<esc>

" Let ctrlp have up to 30 results.
let g:ctrlp_max_height = 30

" Limit ctrlp to current folder only
let g:ctrlp_working_path_mode = '0'

nnoremap <leader>t :CtrlP<CR>
nnoremap <leader>d :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>

command StripWS StripWhitespace

