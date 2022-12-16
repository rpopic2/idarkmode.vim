# idarkmode.vim
Make your vim in Blink Shell adapt to dark mode of your iPhone, or iPad.

## Installation

1. Add following lines of code to your theme .js file.

```
if(typeof t.io === 'undefined') return;
    t.io.sendString("~/.vim/plugged/idarkmode.vim/bin/idktog\n");
```
You can change the directory to where you installed this plugin.
[e.g](https://gist.github.com/rpopic2/68fe20e070375adca8d47a03673bd125)

2. Use your favourite vim plugin manager
```
Plug 'rpopic2/idarkmode.vim'
```

3. Toggle between dark mode and light mode and your vim will adapt to it!
