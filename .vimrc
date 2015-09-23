"***********
" CZ's vimrc
"***********

"************************************************
"**  common setting
color elflord 
set nu			" show number of line 
set cmdheight=1		" heigth of cmd line (how many lines)
set nocompatible	" imcompact vi mode
set nobackup		" don't produce backup file
set noswapfile		" don't produce swap file
set ignorecase 		" ignore case when searching
set showmatch
set matchtime=8		" show match symbol after matchtime/10 second
set ruler		" show where mouse is 
set cursorline		" highlight current line
" set cursorcolumn	" highlight current column
set numberwidth=4	" width of line number

"** status line
set laststatus=2	" location of status information
set statusline=%F\ [FORMAT:%{&ff}]\ [LINE:%l(%p%%)-COL:%v(%c)]\ \ %m%r\ 


"************************************************
"**  IDE setting
filetype plugin  on
filetype on

"*** syntax hight light
syntax enable

"*** alias
iabbrev mi int<Space>main(int<Space>argc,char<Space>*argv[])
iabbrev il #include
iabbrev df #define

"*** Alias setting
iabbrev @p @param
iabbrev @r @return
