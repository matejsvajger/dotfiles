# dotfiles

> My macOS dotfiles

A collection of the dotfiles/configuration I currently use on macOS. It is not
a fully automated setup yet (e.g., configuring macOS still has to be done
manually). Feel free to copy/use anything for your own setup.

## Table of contents

+ [Install](#install)
  + [Updating](#updating)
    + [Upgrading from 1.0.0 to 1.1.0](#upgrading-from-100-to-110)
  + [Visual Studio Code setup](#visual-studio-code-setup)
+ [Maintainer](#maintainer)
+ [Contribute](#contribute)
+ [License](#License)

## Install

Clone this repostitory and run the installer:

```zsh
user@local:~$ git clone https://github.com/mserajnik/dotfiles.git .dotfiles
user@local:~$ cd .dotfiles
user@local:~/.dotfiles$ chmod +x install.sh && ./install.sh
```

### Updating

To update, simply run the following command:

```zsh
user@local:~$ update_dotfiles
```

This is just a simple function executing `cd ~/.dotfiles && git pull`. Should
I add new stuff to the installer or anything else that would require more
elaborate actions, I will mention it here.

### Upgrading from 1.0.0 to 1.1.0

With release `1.1.0` I am moving away from [iTerm2][iterm2] and start using
[Hyper][hyper] instead. It is easier to configure and customize and provides
adequate performance (though probably not as fast as iTerm2) for what I am
doing.

To install Hyper and get my configuration, run the following commands after
executing `update_dotfiles`:

```zsh
user@local:~$ cd .dotfiles
user@local:~/.dotfiles$ brew update && brew cask install hyper
user@local:~/.dotfiles$ rm -f "$HOME/.hyper.js" && stow hyper
```

### Upgrading 

### Visual Studio Code setup

If you are interested in my Visual Studio Code setup, I sync my configuration
to a Gist via [Settings Sync][settings-sync]. You can find that Gist
[here][vs-code-settings-gist].

## Caveats

I am currently using [Dank Mono][dank-mono] as my primary terminal/editor font.
You might want to edit `~/.hyper.js` and adjust the `fontFamily`  after
installing if you are using something else. A good open source alternative I
can recommend is [Fura Powerline][fura-powerline].

## Maintainer

[mserajnik][maintainer]

## Contribute

Since this is my private setup, I usually do not accept pull requests.

However, if you find any issues that you want me to know about, feel free to
[open an issue][issues] or submit a pull request (if you want to do the work
for me).

## License

[MIT](LICENSE.md) © Michael Serajnik

[iterm2]: https://www.iterm2.com/
[hyper]: https://hyper.is/
[settings-sync]: https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync
[vs-code-settings-gist]: https://gist.github.com/mserajnik/ba4a6db27fe0f1350281edb318ecbe14
[dank-mono]: https://dank.sh/
[fura-powerline]: https://github.com/powerline/fonts/tree/master/FiraMono

[maintainer]: https://github.com/mserajnik
[issues]: https://github.com/mserajnik/dotfiles/issues/new
