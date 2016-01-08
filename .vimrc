syntax on

set autoindent
set number
set list
set nocompatible
set incsearch
set ru
set sc
set hls
nmap <Esc><Esc> :nohls<CR><Esc>
set expandtab
set ignorecase
set wrap
set eol
set wildmenu
set showmatch
set tabstop=4

imap [ []<Left>
imap ( ()<Left>
imap { {}<Left>
imap < <><Left>
imap "" ""<Left>
imap '' ''<Left>

autocmd BufRead * :ret!
autocmd BufRead * :%s/\s\+$//ge

let file_name = expand("%")
if has('vim_starting') && file_name == ""
    autocmd VimEnter * NERDTree ./
endif

