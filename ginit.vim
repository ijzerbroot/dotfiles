if exists('g:fvim_loaded')
    " good old 'set guifont' compatibility
    set guifont=Rec\ Mono\ SemiCasual:h18
    " Ctrl-ScrollWheel for zooming in/out
    nnoremap <silent> <C-ScrollWheelUp> :set guifont=+<CR>
    nnoremap <silent> <C-ScrollWheelDown> :set guifont=-<CR>
    nnoremap <A-CR> :FVimToggleFullScreen<CR>
endif

if exists('g:fvim_loaded')
    FVimCursorSmoothMove v:true
    FVimCursorSmoothBlink v:true
" Background composition
"FVimBackgroundComposition 'acrylic'   " 'none', 'transparent', 'blur' or 'acrylic'
"FVimBackgroundOpacity 0.85            " value between 0 and 1, default bg opacity.
"FVimBackgroundAltOpacity 0.85         " value between 0 and 1, non-default bg opacity.
"FVimBackgroundImage 'C:/Users/Fhoeben/Pictures/darkanimegirl.jpg'   " background image
"FVimBackgroundImageVAlign 'center'    " vertial position, 'top', 'center' or 'bottom'
"FVimBackgroundImageHAlign 'center'    " horizontal position, 'left', 'center' or 'right'
"FVimBackgroundImageStretch 'fill'     " 'none', 'fill', 'uniform', 'uniformfill'
"FVimBackgroundImageOpacity 0.85       " value between 0 and 1, bg image opacity

" Title bar tweaks
"FVimCustomTitleBar v:true             " themed with colorscheme

" Debug UI overlay
"FVimDrawFPS v:true

" Font tweaks
"FVimFontAntialias v:true
"FVimFontAutohint v:true
"FVimFontHintLevel 'full'
"FVimFontLigature v:true
"FVimFontLineHeight '+1.0' " can be 'default', '14.0', '-1.0' etc.
"FVimFontSubpixel v:true
"FVimFontNoBuiltInSymbols v:true " Disable built-in Nerd font symbols

" Try to snap the fonts to the pixels, reduces blur
" in some situations (e.g. 100% DPI).
FVimFontAutoSnap v:true

" Font weight tuning, possible valuaes are 100..900
"FVimFontNormalWeight 400
"FVimFontBoldWeight 700

" Font debugging -- draw bounds around each glyph
"FVimFontDrawBounds v:true
"
"FVimBackgroundImage 'C:/Users/Fhoeben/Pictures/darkanimegirl.jpg'   " background image
"FVimBackgroundImageVAlign 'center'    " vertial position, 'top', 'center' or 'bottom'
"FVimBackgroundImageHAlign 'center'    " horizontal position, 'left', 'center' or 'right'
"FVimBackgroundImageStretch 'fill'     " 'none', 'fill', 'uniform', 'uniformfill'
"FVimBackgroundImageOpacity 0.85       " value between 0 and 1, bg image opacity

" Title bar tweaks
"FVimCustomTitleBar v:true             " themed with colorscheme

" Debug UI overlay
"FVimDrawFPS v:true

" Font tweaks
"FVimFontAntialias v:true
"FVimFontAutohint v:true
"FVimFontHintLevel 'full'
"FVimFontLigature v:true
"FVimFontLineHeight '+1.0' " can be 'default', '14.0', '-1.0' etc.
"FVimFontSubpixel v:true
"FVimFontNoBuiltInSymbols v:true " Disable built-in Nerd font symbols

" Try to snap the fonts to the pixels, reduces blur
" in some situations (e.g. 100% DPI).
FVimFontAutoSnap v:true

" Font weight tuning, possible valuaes are 100..900
"FVimFontNormalWeight 400
"FVimFontBoldWeight 700

" Font debugging -- draw bounds around each glyph
"FVimFontDrawBounds v:true
"
endif
