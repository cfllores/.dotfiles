<div align="center">

# Carlos's dotfiles

![image](https://github.com/user-attachments/assets/74f024e4-fba9-4c62-9365-a30d9b1be10a)

</div>

> [!IMPORTANT] 
> This is my personal configuration. Use at your own discretion.

## Prerequisites

* [Emacs](https://www.gnu.org/software/emacs/emacs.html)

    > The Doom Emacs [documentation](https://github.com/doomemacs/doomemacs/blob/master/docs/getting_started.org) is great and covers the Emacs installation. Below is my installation process for macOS:
    >
    > ```sh
    > brew tap railwaycat/emacsmacport
    > brew install emacs-mac --with-starter --with-mac-metal --with-native-comp --with-xwidgets --with-natural-title-bar --with-librsvg --with-dbus
    > ```
    >
    >   > The [natural title bar](https://github.com/railwaycat/homebrew-emacsmacport/wiki/Natural-Title-Bar) feature is disabled by default and needs to be enabled:
    >   > ```sh
    >   > defaults write org.gnu.Emacs TransparentTitleBar DARK
    >   > ```
    >
    >   > The following will remove icons from the title bar:
    >   > ```sh
    >   > defaults write org.gnu.Emacs HideDocumentIcon YES
    >   > ```

* [Doom Emacs](https://github.com/doomemacs/doomemacs/tree/master)

* [Oh My Zsh](https://ohmyz.sh/)

## Installation

First, clone the repo:
```sh
git clone git@github.com:cfllores/.dotfiles.git
```

Then create symbolic links to `.doom.d` and `.zshrc`:
```sh
ln -s <PATH_TO_REPO>/.dotfiles/.doom.d ~/.doom.d
ln -s <PATH_TO_REPO>/.dotfiles/.zshrc ~/.zshrc
```
