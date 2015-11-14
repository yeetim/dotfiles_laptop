"set paste
set pastetoggle=<F2>
set mouse=a

let g:Powerline_symbols = "fancy"
let g:Powerline_dividers_override = ["\Ue0b0","\Ue0b1","\Ue0b2","\Ue0b3"]
let g:Powerline_symbols_override = {'BRANCH': "\Ue0a0", 'LINE': "\Ue0a1", 'RO': "\Ue0a2"}

"colorscheme wombat256
"colorscheme tango
"colorscheme railscasts
"colorscheme vividchalk
colorscheme distinguished
"colorscheme monokai
"colorscheme ir_black
"colorscheme jellybeans 
"colorscheme desertEx
"colorscheme codeblocks_dark

" Pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

set nocompatible        " don't use old settings that vi used.  
						" Use the newer features that vim offers

" Make the leader key be space
let mapleader = "\<Space>"
let maptrailer = "\<Ctrl>"


set backspace=2       	" make backspace able to go over end of lines
set number 		        " show the line number on the side
set laststatus=2    	"always show the status line
set t_Co=256        	"set colors to 256

set number          	"show line number on side
set nornu           	"do not make the line numbers relative to cursor
set mousehide       	"hide mouse cursor while typing
set showmode        	"display the current mode
set cursorline      	"highlight the current line
set backspace=2			"make backspace able to go over end of lines
set backspace=indent,eol,start	"Set regular backspace during insert mode

syntax enable			"use syntax highlighting


" Tab stops
	set tabstop=4    	" when you press tab, it will move forward 
						" by 4 spaces
" ----------------------------------------------------------------------
	set shiftwidth=4 	" the number of spaces the >>, <<, >, and < 
						" commands will move by will be 4
" ----------------------------------------------------------------------
	set smarttab 		" pressing backspace on a blank indented line 
						" will delete the amount of spaces equal to 
						" shiftwidth

" Neo bundle stuff
	set runtimepath+=~/.vim/bundle/neobundle.vim/
	call neobundle#begin(expand('~/.vim/bundle/'))
		" Let NeoBundle manage NeoBundle (Required!)
			NeoBundleFetch 'Shougo/neobundle.vim'
		" Fuzzy finding for files
			NeoBundle 'kien/ctrlp.vim'
		"Move around easier
			NeoBundle 'Lokaltog/vim-easymotion'
		"File navigation
			NeoBundle 'scrooloose/nerdtree'
		"Coffeescript integration and syntax highlighting
			NeoBundle 'kchmck/vim-coffee-script'

	call neobundle#end()

  filetype plugin indent on 			" Required:

	 " If there are uninstalled bundles found on startup,
	 " this will conveniently prompt you to install them.
	 NeoBundleCheck


" Key mappings

	" easymotion <leader> remap
	" Easymotion shortcut
	map <C-O> <Leader><Leader>w
	map <C-E> <Leader><Leader>W

	" space-n to open a new file (in a new tab)
		nnoremap <leader>n :tabnew<cr>

	" space-t to open a new tab
		nnoremap <leader>t :tabnew<cr>

	" <shift-tab> to go to next tab
		nnoremap <s-tab> :tabnext<cr>
		inoremap <s-tab> <esc>:tabnext<cr>

	" <c-shift-tab> to go to previous tab
		nnoremap <c-s-tab> :tabprev<cr>
		inoremap <c-s-tab> <esc>:tabprev<cr>

	" space-f to open fuzzy file finder
		nnoremap <leader>f :CtrlPClearCache<cr>:CtrlP .<cr>

	" space-o to open the file browser
		nnoremap <leader>o :NERDTreeToggle<cr>

	" space-s to save
		nnoremap <leader>s :w<cr>

	" space-shift-s to save as
		nnoremap <leader><s-s> :w 

	" space-q to quit (doesn't save, watch out!)
		nnoremap <leader>q :q!<cr>

	" pageup and page down
		nnoremap <leader>u :PageUp
		nnoremap <leader>d :PageDown

	" space-1 insert "!" commenting
		nnoremap <leader>1 :norm i!<cr>
		vnoremap <leader>1 :norm i!<cr>

	" space-' insert """ commenting
		nnoremap <leader>' :norm i"<cr>
		vnoremap <leader>' :norm i"<cr>

	" space-3 insert "#" commenting
		nnoremap <leader>3 :norm i#<cr>
		vnoremap <leader>3 :norm i#<cr>

	" space-- insert "--" commenting
		nnoremap <leader>- :norm i--<cr>
		vnoremap <leader>- :norm i--<cr>

	" space-6 uncomment
		nnoremap <leader>6 :norm ^x<cr>
		vnoremap <leader>6 :norm ^x<cr>

	" add line above and stay at end current in "insert" mode
		nnoremap <leader>ev :e $MYVIMRC<cr>

" Key mappings that might be new
	" space-rv to reload vimrc
		nnoremap <leader>rv :source<Space>$MYVIMRC<cr>

	" space-ev to edit the vimrc file (think: edit-vim)
		nnoremap <leader>ev :tabnew $MYVIMRC<cr>

" Other keymappings to make the experience less painful
  "make j and k keys go up normally instead of to the previous line number
    nnoremap j gj
    nnoremap k gk

" vim: set ft=vim :
