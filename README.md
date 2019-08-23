# dotfiles

## Info

This repo contains my modified configuration files for bash and some other applications. I have modified them to suit my preferences by including useful aliases (shortened commands) and functions. Feel free to chop and change to suit you!

## Getting Started

### Using Install Script

```bash
$ git clone https://github.com/lintonfisher/dotfiles.git ~/.dotfiles
$ cd ~/.dotfiles/scripts
$ ./install.sh
```

>__Note:__ Make sure to clone the file to `~/.dotfiles` or move it after you've cloned it.

The install script backs all of the original files up to `~/.dotfiles/backup` and appends `_backup` to the filename. To restore the backups, run the `restore_backup.sh` script, which will remove the symbolic links to `~/.dotfiles` and restore the `_backup` files.

```bash
$ cd ~/.dotfiles/scripts
$ ./restore_backup.sh
```

>__Note:__ You probably shouldn't run the `restore_backup.sh` script if you haven't already run the `install.sh` script.

### Manual Install

Manuall install is good if you don't want to use all of the files in this repo.

Basically clone the repo somewhere then move the files you want to use to your home (`$HOME`/`~`) directory:

```bash
$ git clone https://github.com/lintonfisher/dotfiles.git /tmp/dotfiles
$ cp /tmp/dotfiles/* ~
```

>__Note:__ Manual install _will not_ backup your original files.

## Contributing

Suggestions are welcome! If you have any ideas on how to improve the install/restore scripts, or have any useful aliases, please feel free to open a pull-request.

## Issues

If you have any issues with the install/restore process, please feel free to open an issue and I'll do my best to sort it out.
