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

