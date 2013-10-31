set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle (required)
Bundle "gmarik/vundle"

" All your bundles here

" Ruby, Rails, Rake...
Bundle "tpope/vim-rails.git"
Bundle "tpope/vim-rake.git"
Bundle "vim-ruby/vim-ruby.git"

" Other languages
Bundle "pangloss/vim-javascript"

" Html, Xml, Css, Markdown...
Bundle "groenewege/vim-less.git"
Bundle "itspriddle/vim-jquery.git"
Bundle "jtratner/vim-flavored-markdown.git"
Bundle "kchmck/vim-coffee-script"
Bundle "nelstrom/vim-markdown-preview"
Bundle "skwp/vim-html-escape"
Bundle "slim-template/vim-slim.git"
Bundle "timcharper/textile.vim.git"
Bundle "tpope/vim-haml"
Bundle "wavded/vim-stylus"

" Git related...
Bundle "gregsexton/gitv"
Bundle "mattn/gist-vim"
Bundle "tpope/vim-fugitive"
Bundle "tpope/vim-git"

" General text editing improvements...
Bundle "garbas/vim-snipmate.git"
Bundle "godlygeek/tabular"
Bundle "honza/vim-snippets"
Bundle "nelstrom/vim-visual-star-search"
Bundle "skwp/vim-easymotion"
Bundle "tomtom/tcomment_vim.git"
Bundle "tpope/vim-bundler"
Bundle "vim-scripts/IndexedSearch"
Bundle "vim-scripts/camelcasemotion.git"
Bundle "vim-scripts/matchit.zip.git"
Bundle "terryma/vim-multiple-cursors"

" General vim improvements
Bundle "MarcWeber/vim-addon-mw-utils.git"
Bundle "kien/ctrlp.vim"
Bundle "mattn/webapi-vim.git"
Bundle "rking/ag.vim"
Bundle "scrooloose/nerdtree.git"
Bundle "scrooloose/syntastic.git"
Bundle "sjl/gundo.vim"
Bundle "skwp/greplace.vim"
Bundle "skwp/vim-conque"
Bundle "tomtom/tlib_vim.git"
Bundle "tpope/vim-abolish"
Bundle "tpope/vim-endwise.git"
Bundle "tpope/vim-ragtag"
Bundle "tpope/vim-repeat.git"
Bundle "tpope/vim-surround.git"
Bundle "tpope/vim-unimpaired"
Bundle "vim-scripts/AnsiEsc.vim.git"
Bundle "vim-scripts/AutoTag.git"
Bundle "vim-scripts/lastpos.vim"
Bundle "vim-scripts/sudo.vim"
Bundle "xsunsmile/showmarks.git"

" Text objects
Bundle "austintaylor/vim-indentobject"
Bundle "bootleq/vim-textobj-rubysymbol"
Bundle "coderifous/textobj-word-column.vim"
Bundle "kana/vim-textobj-datetime"
Bundle "kana/vim-textobj-entire"
Bundle "kana/vim-textobj-function"
Bundle "kana/vim-textobj-user"
Bundle "lucapette/vim-textobj-underscore"
Bundle "nathanaelkane/vim-indent-guides"
Bundle "nelstrom/vim-textobj-rubyblock"
Bundle "thinca/vim-textobj-function-javascript"
Bundle "vim-scripts/argtextobj.vim"

" Cosmetics, color scheme, Powerline...
Bundle "chrisbra/color_highlight.git"
Bundle "tomasr/molokai"

" Go Lang
Bundle "jnwhiteh/vim-golang"

"Filetype plugin indent on is required by vundle
filetype plugin indent on

set number                      "Line numbers are good
autocmd BufEnter * set relativenumber
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0              "Disable cursor blink
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

"turn on syntax highlighting
syntax on

" ================ Turn Off Swap Files ==============

set noswapfile
set nobackup
set nowb

" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
" Only works all the time.

silent !mkdir ~/.vim/backups > /dev/null 2>&1
set undodir=~/.vim/backups
set undofile

" ================ Indentation ======================

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

filetype plugin on
filetype indent on

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points

" ================ Folds ============================

set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

" ================ Completion =======================

set wildmode=list:longest
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

" ================ Scrolling ========================

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1


set term=screen-256color
let g:rehash256 = 1
color molokai

"make <c-l> clear the highlight as well as redraw
nnoremap <C-L> :nohls<CR><C-L>
inoremap <C-L> <C-O>:nohls<CR>

"key mapping for window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"key mapping for tab navigation
nmap <Tab> gt
nmap <S-Tab> gT
