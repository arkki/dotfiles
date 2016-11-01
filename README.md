# My dev-env dotfiles - using stow for symlinks

Fish-shell only!

## Requirements

Install:

~~~
sudo apt-get install stow git fish
~~~

## Usage

~~~
git clone https://github.com/arkki/dotfiles.git ~/.dotfiles
~/.dotfiles/.install/init.sh
~~~

To unlink, use:

~~~
~/.dotfiles/.install/unstow_all.sh
~~~

Enjoy.
