# idarkmode.vim
Makes your blink shell's vim adapt to your iPhone, iPad's dark mode

## Installation

1. Add this to your theme .js file
Change the directory to where you installed this plugin.
```
if(typeof t.io === 'undefined') return;
    t.io.sendString("~/.vim/plugged/idarkmode.vim/bin/idktog\n");
```
e.g) https://gist.github.com/rpopic2/68fe20e070375adca8d47a03673bd125

2. Use your favourite vim plugin manager
```
Plug 'rpopic2/idarkmode.vim'
```

3. Toggle between dark mode and light mode and your vim will adapt to it!
