.vim
====

This repo uses NeoBundle in order to install plugins.

If you want to know more about vim-plug this :

```
https://github.com/junegunn/vim-plug
```

And if you want to install more plugins this is what you want

```
https://vimawesome.com
```

Setup
====

You can install this via the command

```
curl -L https://raw.githubusercontent.com/sohjiro/.vim/master/run_config.sh | sh
```

One is finished open vim and run the following command

```
:PlugInstall
```

FAQ
====

* **Should I came here and do all of this again in order to update?**

Before July, 25th the answer was 'YES', why? I didn't have the time (and idea) to how to make an update scripting. After that day I use an idea of a friend and make a script for this task so in order to update you just need to run in the command line the next

```sh
myvim_update
```


* **Can't see fonts or fonts are not loading?**

Check this :

```
https://github.com/Lokaltog/powerline-fonts
```
