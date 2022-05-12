" idarkmode.vim
" Makes vim to automatically adapt to your iPhone and iPad's curent appearance. You change
" iOS's appearance to dark, vim will change to dark appearance automatically.
" Last Change : 12 May 2022
" Maintainer : rpopic2 (https://github.com/rpopic2)

if exists("g:loaded_idkmod")
    finish
endif
let g:loaded_idkmod = 1

if !exists(":iUpdateAppearance")
    command IDarkModeUpdate :call s:iUpdate)
endif

function s:iUpdate()
    let iosinfo = readfile(glob(~/.iosinfo))
    echo iosinfo
endfunction
