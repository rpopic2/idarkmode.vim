" idarkmode.vim
" Makes vim to automatically adapt to your iPhone and iPad's curent appearance. You change
" iOS's appearance to dark, vim will change to dark appearance automatically.
" Last Change : 13 May 2022
" Version 1.0_RC
" Maintainer : rpopic2 (https://github.com/rpopic2)

if exists("g:loaded_idarkmode")
    finish
endif
let g:loaded_idarkmode = 1

if !exists(":IDarkModeToggle")
    command IDarkModeToggle :call s:IdkmodToggle()
endif

map ~/.vim/plugged/idarkmode.vim/bin/idktog :IDarkModeToggle
imap ~/.vim/plugged/idarkmode.vim/bin/idktog <esc>:IDarkModeToggle<esc>i

au VimEnter  * call s:IdkmodUpdate()
au CursorHold * call s:IdkmodUpdate()
au CursorHoldI * call s:IdkmodUpdate()
au VimResized * call s:IdkmodUpdate()

let g:IDarkModeDarkTheme = 'rose-pine-dark'
let g:IDarkModeLightTheme = 'rose-pine-light'
let g:IDarkModeUpdateLightline = 1
let g:IDarkModeLightlineThemePath = 'autoload/lightline/colorscheme/rosepine.vim'

function s:IdkmodUpdate()
    let s:iosinfo = readfile(glob('~/.iosinfo'))
    let s:isDarkMode = split(s:iosinfo[0], "=")[1]
    let s:isBgDark = &background == 'dark'
    if s:isBgDark != s:isDarkMode
        call IdkmodSetTheme(s:isDarkMode)
    endif
endfunction

function s:IdkmodToggle()
    silent !~/.vim/plugged/idarkmode.vim/bin/idktog
    call s:IdkmodUpdate()
endfunction

"colorscheme default is a dummy call.
function! IdkmodSetTheme(isDark)
    if a:isDark
        colorscheme default
        execute 'colorscheme ' .. g:IDarkModeDarkTheme
    else
        colorscheme default
        execute 'colorscheme ' ..  g:IDarkModeLightTheme
    endif
    if g:IDarkModeUpdateLightline
        call IdkmodUpdateLightline()
    endif
endfunction

function! IdkmodUpdateLightline()
    execute 'source' globpath(&rtp, g:IDarkModeLightlineThemePath)
    call lightline#colorscheme()
    call lightline#update()
endfunction
