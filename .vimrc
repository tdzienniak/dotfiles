"NeoBundle Scripts-----------------------------
if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=/home/tymoteusz/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('/home/tymoteusz/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'sickill/vim-monokai'
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'bling/vim-airline'
NeoBundle 'Valloric/YouCompleteMe'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'scrooloose/nerdtree'

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------


syntax enable		"enable syntax higlighting
colorscheme monokai 	"choose syntax highlighting theme

"Indenting
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set shiftwidth=4
set expandtab       " tabs are spaces
filetype indent on      " load filetype-specific indent files

"UI settings
set number              " show line numbers
set cursorline          " highlight current line
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to
set showmatch           " highlight matching [{()}]
set showcmd             " show command in bottom bar

"Searching
set incsearch           " search as characters are entered
set hlsearch            " highlight matches

"Folding
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by defaulti
set foldnestmax=10      " 10 nested fold max
" space open/closes folds
nnoremap <space> za
set foldmethod=syntax  " fold based on indent level

" <Leader> remap
let mapleader=","       " leader is comma

"Buffers
set hidden "if open new buffer, old is hidden instead if closed

"Airline config
set laststatus=2
let g:airline_powerline_fonts = 1

"Mapping for windows management
function! WinMove(key) 
    let t:curwin = winnr()
    exec "wincmd ".a:key
    if (t:curwin == winnr()) "we havent moved
        if (match(a:key,'[jk]')) "were we going up/down
            vnew
        else 
            vnew
        endif
        exec "wincmd ".a:key
    endif
endfunction

"switching and opening
map <leader>h              :call WinMove('h')<cr>
map <leader>k              :call WinMove('k')<cr>
map <leader>l              :call WinMove('l')<cr>
map <leader>j              :call WinMove('j')<cr>

"closing and rotating
map <leader>wc :wincmd q<cr>
map <leader>wr <C-W>r

"moving
map <leader>H              :wincmd H<cr>
map <leader>K              :wincmd K<cr>
map <leader>L              :wincmd L<cr>
map <leader>J              :wincmd J<cr>

"resizing
nmap <left>  :3wincmd <<cr>
nmap <right> :3wincmd ><cr>
nmap <up>    :3wincmd +<cr>
nmap <down>  :3wincmd -<cr>

