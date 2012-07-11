set nocompatible
set runtimepath=~/.vim,$VIM/vimfiles,$VIMRUNTIME
syntax enable
set paste
set hidden

set tabstop=4
set expandtab
set shiftwidth=4
set shiftround
set clipboard=unnamed

" Tab completion
set wildmode=longest,list,full
set wildmenu
set backspace=2

let g:ackprg="ack-grep -H --nocolor --nogroup --column"

filetype plugin on

set hlsearch        " highlight matches
set incsearch       " incremental searching
set ignorecase      " searches are case insensitive...
set smartcase       " case sensetive if search string contains capital letter

" adds the line numbers
set rnu
au InsertEnter * :set nu
au InsertLeave * :set rnu
au FocusLost * :set nu
au FocusGained * :set rnu

" disable the arrows so I don't use them
noremap  <Up> ""
noremap! <Up> <Esc>
noremap  <Down> ""
noremap! <Down> <Esc>
noremap  <Left> ""
noremap! <Left> <Esc>
noremap  <Right> ""
noremap! <Right> <Esc>

set laststatus=2    

:iabbrev @@  ryandetzel@gmail.com 

set colorcolumn=81                           " line to show 81 character mark
set cursorline                               " shows the horizontal cursor line

" Indent Python in the Google way.
setlocal indentexpr=GetGooglePythonIndent(v:lnum)
let s:maxoff = 50 " maximum number of lines to look backwards.

function GetGooglePythonIndent(lnum)

  " Indent inside parens.
  " Align with the open paren unless it is at the end of the line.
  " E.g.
  "   open_paren_not_at_EOL(100,
  "                         (200,
  "                          300),
  "                         400)
  "   open_paren_at_EOL(
  "       100, 200, 300, 400)
  call cursor(a:lnum, 1)
  let [par_line, par_col] = searchpairpos('(\|{\|\[', '', ')\|}\|\]', 'bW',
        \ "line('.') < " . (a:lnum - s:maxoff) . " ? dummy :"
        \ . " synIDattr(synID(line('.'), col('.'), 1), 'name')"
        \ . " =~ '\\(Comment\\|String\\)$'")
  if par_line > 0
    call cursor(par_line, 1)
    if par_col != col("$") - 1
      return par_col
    endif
  endif

  " Delegate the rest to the original function.
  return GetPythonIndent(a:lnum)

endfunction

let pyindent_nested_paren="&sw*2"
let pyindent_open_paren="&sw*2"

call pathogen#infect()
