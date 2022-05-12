" idkmod.vim
" Makes vim to automatically adapt to your iOS's curent appearance.You change
" iOS to dark appearance, vim changes to dark appearance automatically.
" Last Change : 12 May 2022
" Maintainer : rpopic2 (https://github.com/rpopic2)

if exists("g:loaded_idkmod")
    finish
endif
let g:loaded_idkmod = 1

if !exists(":iUpdateAppearance")
    command iUpdateAppearance :call s:iUpdateApp()
endif

function s:iUpdateApp()
    let iosinfo = readfile(glob(~/.iosinfo))
    echo iosinfo
endfunction
