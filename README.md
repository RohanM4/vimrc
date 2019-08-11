# vimrc

>These are my Vim Configs

Here is how to use this for your own machine
```bash
cd ~
mkdir .vim/
git clone https://github.com/RohanM4/Vimrc.git ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
cd ~/.vim
git submodule update --init
```
This should copy all of my Vim Configurations


What this does is that it makes a copy of your .vimrc named vimrc in your .vim folder. To add things
to the .vimrc, edit the vimrc in your home directory, not the one in the .vim folder.

Here is how to install all the plugins:

```bash
cd .vim
vim
:PluginInstall
:q!
```

