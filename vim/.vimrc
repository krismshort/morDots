"""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""[[ Vimrc  ]]""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""
""
""
"""""""""""""[[ Structure  ]]""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""
""
""  ---> General
""  ---> UI
""  ---> File handlers
""  ---> Text handlers
""  ---> Visual mode options
""  ---> Moves
""  ---> Status line
""  ---> Mappings
""  ---> Search
""  ---> Spell check
""  ---> Helpers
""  ---> Plugins
""  ------> LaTeX
""  ------> Python
""  ------> Lua
""  ------> Smlnj
""  ------> Bash
""  ------> Xsh
"""""""""""""""""""""""""""""""""""""""""""
""
""
""
"""""""""""""""""""""""""""""""""""""""""""
"""""""""""""[[ General  ]]""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""
""
""
"" Use vim not vi settings!!!
set nocompatible
""
"" Set size of history
set history=10000
""
"" Filetype plugins
filetype plugin on
filetype indent on
""
"" Set auto read files changed from outside
set autoread
""
"" Set Leader
let mapleader=","
let g;mapleader=","
""
"" Highlight comments
highlight Comment term=bold ctermfg=white
""
"" Set encoding
set encoding=utf8
""
"" Keep tabs from doing stupid shit
set noexpandtab
set tabstop=4
set shiftwidth=4
""
"""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""[[ UI ]]""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""
""
"" Modify look of tabline
set tabline=tabline-layout
""
"" List only first six letters of title and highlight the active tab
function ShortTabLine()
    let ret = ""
    for i in range(tabpaenr("$")
        if i + 1 == tabpagenr()
            let ret = "%#errorMsg"
        else
            let ret = "%#TabLine#"
        endif
        let buflist = tabpagebuflist(i+1)
        let winnr = tabpagewinnr(i+1)
        let buffername = bufname(buflist[winnr - 1])
        let filename = fnamemodify(buffername, ";t")
        if filename == " "
            let filename = "noname"
        endif
        if strlen(filename) >= 8
            let ret = "[".filename."]"
        endif
    endfor
"""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""
"""""""""""""[[ Status Line ]]"""""""""""""
"""""""""""""""""""""""""""""""""""""""""""
""
"" Set look of status line
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\[TYPE=%Y]\ [POS=%04,%04v][%p%%]\[LEN=%L]
""
"" Make the statusline appear on line 2
set laststatus=2
""
"" Show position
set ruler
""
"" Set height of command bar
set cmdheight=2
""
"" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
""
"" Ignore case when searching
set ignorecase
"" When searching try to be smart about cases 
set smartcase
""
"" Highlight search results
set hlsearch
""
"" Makes search act like search in modern browsers
set incsearch 
""
"" Don't redraw while executing macros (good performance config)
set lazyredraw 
""
"" For regular expressions turn magic on
set magic
""
"" Show matching brackets when text indicator is over them
set showmatch 
"" How many tenths of a second to blink when matching brackets
set mat=2
""
"" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500
""
"" Add a bit extra margin to the left
set foldcolumn=1
""
"" Enable syntax highlighting
syntax enable
""
"" Colorschem
try
    colorscheme material
catch
endtry
""
set background=dark
""
"" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions-=e
    set t_Co=256
    set guitablabel=%M\ %t
endif
""
"" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

"" Use Unix as the standard file type
set ffs=unix,mac,dos
""
"" Always show the status line
set laststatus=2
""
"" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l
""
"" Delete trailing white space on save, useful for Python and CoffeeScript ;)
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()
""
"" Use Bundles config
if filereadable(expand("~/.vimrc.bundles"))
    source ~/.vimrc.bundles
endif
""
"" Automatically enable mouse usage
set mouse=a  
""
""  Hide the mouse cursor while typing
set mousehide
scriptencoding utf-8
""
if has('clipboard')
    if has('unnamedplus')  " When possible use + register for copy-paste
        set clipboard=unnamed,unnamedplus
    else         " On mac and Windows, use * register for copy-paste
        set clipboard=unnamed
    endif
endif
""
"" Cursor past last character
set virtualedit=onemore             
""    
"" Shit ton of hist
set history=1000
""
"" Spell Check
set spell
""
"" Allow buffer switching without saving
set hidden
set showmode                    " Display the current mode

set cursorline                  " Highlight current line


set iskeyword-=.                    " '.' is an end of word designator
set iskeyword-=#                    " '#' is an end of word designator
set iskeyword-=-                    " '-' is an end of word designator
