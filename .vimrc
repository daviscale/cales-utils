" enable pathogen package manager
execute pathogen#infect()

" enable syntax highlighting
syntax on

"" enable file type detection
"" load the plugin file for a specific file type
"" load the indent file for a filetype
"" source: http://vimdoc.sourceforge.net/htmldoc/filetype.html
filetype plugin indent on

"always show the status line
:set laststatus=2

"display the git info in the status line
:set statusline=%{fugitive#statusline()}

" font type and size
:set guifont=Monaco:h16

"set line numbers
:set number

"highlight last search
:set hlsearch

" autosave when focus is lost
:au FocusLost * :wa

" open a new tab when selecting a file with Ctrl-P
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-t>'],
    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
    \ }

" asciidoc settings
autocmd BufRead,BufNewFile *.adoc,*.txt,*.asciidoc,README,TODO,CHANGELOG,NOTES,ABOUT
        \ setlocal autoindent expandtab tabstop=8 softtabstop=2 shiftwidth=2 filetype=asciidoc
        \ textwidth=70 wrap formatoptions=tcqn
        \ formatlistpat=^\\s*\\d\\+\\.\\s\\+\\\\|^\\s*<\\d\\+>\\s\\+\\\\|^\\s*[a-zA-Z.]\\.\\s\\+\\\\|^\\s*[ivxIVX]\\+\\.\\s\\+
        \ comments=s1:/*,ex:*/,://,b:#,:%,:XCOMM,fb:-,fb:*,fb:+,fb:.,fb:>
