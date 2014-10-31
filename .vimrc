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
