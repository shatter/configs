"let @/ = ""

filetype on
filetype indent off
filetype plugin on
filetype plugin indent off

nmap <silent> <C-t> :tabnew<CR>
imap <silent> <C-t> <Esc>:tabnew<CR>

set noautoindent
set nobackup
set nocindent
set nocompatible
set noexpandtab
set nosmartindent
set nowrap
set tabstop=4
set title

set background=dark
set cinoptions=
set indentexpr=
set laststatus=2
set shortmess=IatA
set showtabline=2
set statusline=[%n]\ %m%r%h%w\ %F\%=\[%c]\ [%l,%L]\ [%p%%]
"set statusline=%mb%n:%f%R%Y\ %l/%L,%c:%v
set titlestring=[%n]\ %F
set viminfo='50,<50,s10,:50,/0,h,@20,n~/.vim/viminfo

nmap <silent> 1 :1tabn<CR>
nmap <silent> 2 :2tabn<CR>
nmap <silent> 3 :3tabn<CR>
nmap <silent> 4 :4tabn<CR>
nmap <silent> 5 :5tabn<CR>
nmap <silent> 6 :6tabn<CR>
nmap <silent> 7 :7tabn<CR>
nmap <silent> 8 :8tabn<CR>
nmap <silent> 9 :9tabn<CR>
nmap <silent> 0 :0tabn<CR>

imap <silent> 1 <ESC>:1tabn<CR>a
imap <silent> 2 <ESC>:2tabn<CR>a
imap <silent> 3 <ESC>:3tabn<CR>a
imap <silent> 4 <ESC>:4tabn<CR>a
imap <silent> 5 <ESC>:5tabn<CR>a
imap <silent> 6 <ESC>:6tabn<CR>a
imap <silent> 7 <ESC>:7tabn<CR>a
imap <silent> 8 <ESC>:8tabn<CR>a
imap <silent> 9 <ESC>:9tabn<CR>a
imap <silent> 0 <ESC>:0tabn<CR>a

if (&term == 'rxvt-256color') || (&term =~ 'rxvt-unicode256') || (&term =~ 'xterm-256color') || (&term =~ '^screen-256color')
	set t_Co=256
	"hi StatusLine      ctermfg=232   ctermbg=250
	"hi StatusLineNC    ctermfg=232   ctermbg=241
	hi StatusLine      ctermfg=0   ctermbg=7 cterm=INVERSE
	hi StatusLineNC    ctermfg=0   ctermbg=8
endif

if &term =~ "linux"
	if has("terminfo")
		set t_Co=16
		let xterm16_colormap = 'default'
		let xterm16_brightness = 'low'
		colorscheme xterm16
	endif
endif
