" Vim color file
" Maintainer: michal.nezerka@gmail.com	

set bg=dark
hi clear
if exists("syntax_on")
	syntax reset
endif

let colors_name = "blueboy"

hi Normal		ctermfg=246 ctermbg=black
hi ErrorMsg		ctermfg=white ctermbg=lightblue
hi Visual		ctermfg=lightblue ctermbg=fg cterm=reverse
hi VisualNOS	ctermfg=lightblue ctermbg=fg cterm=reverse,underline
hi Todo			ctermfg=226 ctermbg=224
hi Search		ctermfg=white ctermbg=darkblue cterm=underline term=underline
hi IncSearch	ctermfg=darkblue ctermbg=gray

hi SpecialKey	ctermfg=darkcyan
hi Directory	ctermfg=39
hi Title		ctermfg=magenta cterm=bold
hi WarningMsg	ctermfg=red
hi WildMenu		ctermfg=yellow ctermbg=black cterm=none term=none
hi ModeMsg		ctermfg=lightblue
hi MoreMsg		ctermfg=darkgreen
hi Question		ctermfg=green cterm=none
hi NonText		ctermfg=darkblue

hi StatusLine	ctermfg=blue ctermbg=gray term=none cterm=none
hi StatusLineNC	ctermfg=black ctermbg=gray term=none cterm=none
hi VertSplit	ctermfg=black ctermbg=gray term=none cterm=none

hi Folded	    ctermfg=darkgrey ctermbg=234
hi FoldColumn	ctermfg=darkgrey ctermbg=black cterm=bold term=bold
hi LineNr	    ctermfg=green cterm=none

hi DiffAdd	    ctermbg=darkblue term=none cterm=none
hi DiffChange	ctermbg=magenta cterm=none
hi DiffDelete	ctermfg=blue ctermbg=cyan 
hi DiffText     cterm=bold ctermbg=red

hi Cursor	    ctermfg=black ctermbg=yellow
hi lCursor	    ctermfg=black ctermbg=white


hi Comment      ctermfg=24
hi Constant     ctermfg=166 cterm=none
hi Special      ctermfg=brown cterm=none
hi Identifier	ctermfg=39  cterm=none
hi Statement	ctermfg=221 cterm=none 
hi PreProc  	ctermfg=42 cterm=none
hi type	    	ctermfg=28 cterm=none
hi Underlined	cterm=underline term=underline
hi Ignore   	ctermfg=bg


