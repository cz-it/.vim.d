"***********
" CZ's vimrc
"***********

"*********BEGIN OF VUNDLE *********************************** 
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"Plugins
Plugin 'nsf/gocode', {'rtp': 'vim/'} " golang
Plugin 'scrooloose/nerdtree'         " directory tree
Plugin 'fatih/vim-go'                " golang misc/vim 
Plugin 'majutsushi/tagbar'           " tagbar should install ctags&gotags
Plugin 'scrooloose/syntastic'        " syntas checking
Plugin 'OmniSharp/omnisharp-vim'     " CSharp
Plugin 'Valloric/YouCompleteMe'      " for auto complete
Plugin 'fatih/molokai'               " a theme for fatih
Plugin 'SirVer/ultisnips'            " for alias


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"********************END OF VUNDLE **************************

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

"** TAB Space
set ts=4
set expandtab
set autoindent

"** Shortcut
map <F12> :NERDTreeToggle<CR>
map <F9> :TagbarToggle<CR>



"************************************************
"**  IDE setting
filetype plugin  on
filetype on

"*** syntax hight light
syntax enable

"*** template files
autocmd BufNewFile *.go 0r ~/.vim/template/go.tpl  " golang
let NERDTreeWinPos="right"

"*** golang
"**** go tags
let g:tagbar_type_go = {
	\ 'ctagstype' : 'go',
	\ 'kinds'     : [
		\ 'p:package',
		\ 'i:imports:1',
		\ 'c:constants',
		\ 'v:variables',
		\ 't:types',
		\ 'n:interfaces',
		\ 'w:fields',
		\ 'e:embedded',
		\ 'm:methods',
		\ 'r:constructor',
		\ 'f:functions'
	\ ],
	\ 'sro' : '.',
	\ 'kind2scope' : {
		\ 't' : 'ctype',
		\ 'n' : 'ntype'
	\ },
	\ 'scope2kind' : {
		\ 'ctype' : 't',
		\ 'ntype' : 'n'
	\ },
	\ 'ctagsbin'  : 'gotags',
	\ 'ctagsargs' : '-sort -silent'
\ }

"*** alias
iabbrev mi int<Space>main(int<Space>argc,char<Space>*argv[])
iabbrev il #include
iabbrev df #define

"*** Alias setting
iabbrev @p @param
iabbrev @r @return
