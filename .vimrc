" Note: Skip initialization for vim-tiny or vim-small.
 if 0 | endif

 filetype off

 if has('vim_starting')
   if &compatible
       set nocompatible               " Be iMproved
         endif

           set runtimepath+=~/.vim/bundle/neobundle.vim
           endif

           call neobundle#begin(expand('~/.vim/bundle/'))

           " originalrepos on github
		   NeoBundle 'Shougo/neosnippet-snippets'
           NeoBundle 'Shougo/neobundle.vim'
           NeoBundle 'Shougo/vimproc', {
             \ 'build' : {
				 \ 'windows' : 'make -f make_mingw32.mak',
                 \ 'cygwin' : 'make -f make_cygwin.mak',
                 \ 'mac' : 'make -f make_mac.mak',
                 \ 'unix' : 'make -f make_unix.mak',
             \ },
           \ }
           NeoBundle 'VimClojure'
           NeoBundle 'Shougo/vimshell'
           NeoBundle 'Shougo/unite.vim'
           NeoBundle 'Shougo/neocomplcache'
           NeoBundle 'Shougo/neosnippet'
           NeoBundle 'jpalardy/vim-slime'
           NeoBundle 'scrooloose/syntastic'
           NeoBundle 'Shougo/vimfiler.vim'
           NeoBundle 'itchyny/lightline.vim'
           NeoBundle 't9md/vim-textmanip'
           NeoBundle 'Shougo/unite.vim'
           NeoBundle 'ujihisa/unite-colorscheme'
           NeoBundle 'tomasr/molokai'
		   NeoBundle 'airblade/vim-gitgutter'

call neobundle#end()

filetype plugin indent on     " required!
filetype indent on
set nocompatible
syntax on
set number
set tabstop=4
set shiftwidth=4
set backspace=indent,eol,start
set encoding=utf-8
set laststatus=2
set t_Co=256
set noshowmode
inoremap <C-e> <Esc>$a
inoremap <C-a> <Esc>^a
noremap <C-e> <Esc>$a
noremap <C-a> <Esc>^a

function! LightLineFugitive()
	if exists("*fugitive#head")
		let branch = fugitive#head()
			return branch !=# '' ? '□ '.branch : ''
	endif
	return ''
endfunction

NeoBundleCheck
