
" swp and such in one place
set backupdir=~/.vim/backup
set backup
set directory=~/.vim/tmp

set nowrap

" actually legible vimdiff colors
"highlight DiffAdd cterm=none ctermfg=bg ctermbg=Green gui=none guifg=bg guibg=Green
"highlight DiffDelete cterm=none ctermfg=bg ctermbg=Red gui=none guifg=bg guibg=Red
"highlight DiffChange cterm=none ctermfg=bg ctermbg=Yellow gui=none guifg=bg guibg=Yellow
"highlight DiffText cterm=none ctermfg=bg ctermbg=Magenta gui=none guifg=bg guibg=Magenta 

" exuberant ctags (yes BOTH cscope and ctags. taglist plugin relies on ctags)
set tags=/home/neilk/.vimrc/mytags/framework
let Tlist_Ctags_Cmd = "/opt/local/bin/ctags"
let Tlist_WinWIdth = 32
map <F4> :TlistToggle<cr>

" saner vimdiff colors
highlight DiffAdd term=reverse cterm=bold ctermbg=green ctermfg=white 
highlight DiffChange term=reverse cterm=bold ctermbg=cyan ctermfg=black 
highlight DiffText term=reverse cterm=bold ctermbg=gray ctermfg=black 
highlight DiffDelete term=reverse cterm=bold ctermbg=red ctermfg=black 

filetype on

" manually add cscope file (why?) we seem to be doing this twice.
set cst
set nocsverb
set csverb
cs add /Users/neilk/Documents/personal/cscope/cscope.out

" toggle taglist 
map <F2> :TlistToggle<CR>

" less irritating visual termbell
set vb

" javascript niceties
ab f( function() {  }

" visual niceties
syntax on

" colors
hi SpecialKey	  term=bold  cterm=bold  ctermfg=darkgrey  guifg=#333333
hi NonText		  term=bold  cterm=bold  ctermfg=darkgrey  gui=bold      guifg=#333333
hi WrongIndent ctermbg=darkgrey guibg=darkgrey

" settings for pad-mediawiki project
autocmd BufNewFile,BufRead /Users/neilk/Documents/wmf/pad-mediawiki/* set nowrap tabstop=2 shiftwidth=2 expandtab;
autocmd BufNewFile,BufRead /Users/neilk/Documents/wmf/pad-mediawiki/* set list
autocmd BufNewFile,BufRead /Users/neilk/Documents/wmf/pad-mediawiki/* set listchars=tab:▸\ ,trail:·;
autocmd BufNewFile,BufRead /Users/neilk/Documents/wmf/pad-mediawiki/* match WrongIndent /^\s*\zs\t\+/;

" settings for mediawiki projects
autocmd BufNewFile,BufRead /Users/neilk/Sites/* set nowrap tabstop=4 shiftwidth=4 noexpandtab
autocmd BufNewFile,BufRead /Users/neilk/Sites/* match WrongIndent /^\t*\zs \+\ze/
autocmd BufNewFile,BufRead /Users/neilk/Sites/* set list
autocmd BufNewFile,BufRead /Users/neilk/Sites/* set listchars=tab:\ \ ,trail:·
