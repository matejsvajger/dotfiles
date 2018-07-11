# dotfiles

> My macOS dotfiles

A collection of the dotfiles/configuration I currently use on macOS. It is not
a fully automated setup yet (e.g., configuring macOS still has to be done
manually). Feel free to copy/use anything for your own setup.

## Table of contents

+ [Install](#install)
  + [Updating](#updating)
  + [Visual Studio Code setup](#visual-studio-code-setup)
+ [Maintainer](#maintainer)
+ [Contribute](#contribute)
+ [License](#License)

## Install

First, clone this repostitory and run the installer:

```zsh
user@local:~$ git clone https://github.com/mserajnik/dotfiles.git .dotfiles
user@local:~$ cd .dotfiles
user@local:~/.dotfiles$ chmod +x install.sh && ./install.sh
```

Next, download and install (add it in your Font Book) the font
[Fura Powerline][fura-powerline]

Finally, download [base16-material-256.itermcolors][base16-material-iterm].

Open iTerm2, go to _Preferences_, _Profiles_, _Colors_ and import and set the
new color preset unter _Color Presets_.

Set the following profile settings in iTerm2 (sections/fields not mentioned
can stay default, fields not mentioned should be unchecked/empty). Of course,
feel free to deviate based in your own preferences:

+ _Text_
  + _Cursor_:
    + [x] `Underline`
    + [ ] `Blinking cursor`
  + _Text Rendering_
    + [x] `Draw bold text in bold font`
    + [x] `Italic text allowed`
    + _Use thin strokes for anti-aliased text_: `On Retina Displays`
    + _Unicode normalization form_: `None`
    + [x] `Use Unicode Version 9 Widths`
    + [ ] `Treat ambigious-width characters as double-with`
+ _Font_
  + `12pt Fira Mono Medium for Powerline`
  + [ ] `Use ligatures`
  + [x] `Anti-aliased`
  + [ ] `Use a different font for non-ASCII text`
+ _Window_
  + _Window Appearance_
    + _Transparency_: 100% opaque (slider full left)
+ _Terminal_
  + _Terminal Emulation_
    + _Character Encoding_: `Unicode (UTF-8)`
    + _Report Terminal Type_: `xterm-256-color`

### Updating

To update, simply run the following command:

```zsh
user@local:~$ update_dotfiles
```

This is just a simple function executing `cd ~/.dotfiles && git pull`. Should
I add new stuff to the installer or anything else that would require more
elaborate actions, I will mention it here.

### Visual Studio Code setup

If you are interested in my Visual Studio Code setup, I sync my configuration
to a Gist via [Settings Sync][settings-sync]. You can find that Gist
[here][vs-code-settings-gist].

## Maintainer

[mserajnik][maintainer]

## Contribute

Since this is my private setup, I usually do not accept pull requests.

However, if you find any issues that you want me to know about, feel free to
[open an issue][issues] or submit a pull request (if you want to do the work
for me).

## License

[MIT](LICENSE.md) © Michael Serajnik

[fura-powerline]: https://github.com/powerline/fonts/tree/master/FiraMono
[base16-material-iterm]: https://github.com/martinlindhe/base16-iterm2/blob/master/itermcolors/base16-material-256.itermcolors
[settings-sync]: https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync
[vs-code-settings-gist]: https://gist.github.com/mserajnik/ba4a6db27fe0f1350281edb318ecbe14

[maintainer]: https://github.com/mserajnik
[issues]: https://github.com/mserajnik/dotfiles/issues/new
