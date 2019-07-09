if exists('g:fvim_loaded')
    " 1st param = blink animation
    " 2nd param = move animation
    call rpcnotify(1, 'SetCursorAnimation', v:true, v:true)
endif
