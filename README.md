# Dot-Files

## Info

These files are general configuration files used by the terminal emulator and other applications. I have modified them to suit my preferences by including useful aliases (shortened commands) and functions.

## Getting Started

### Using Install Script

```bash
$ git clone git@github.com:lintonfisher/dotfiles.git ~/.dotfiles
$ cd ~/.dotfiles
$ chmod 700 install.sh
$ ./install.sh
```

>__Note:__ Make sure to clone the file to `~/.dotfiles` or move it after you've cloned it.

The install script backs all of the original files up. To restore the backups, run the `restore_backup.sh` script.

```bash
$ cd ~/.dotfiles
$ chmod 700 restore_backup.sh
$ ./restore_backup,sh
```

### Manual Install

Manuall install is good if you don't want to use all of the files in this repo.

Basically clone the repo somewhere then move the files you want to use to your home (`$HOME`/`~`) directory:

```bash
$ git clone git@github.com:lintonfisher/dotfiles.git /tmp/dotfiles
$ cp /tmp/dotfiles/* ~
```

>__Note:__ Manual install _will not_ backup your original files.
