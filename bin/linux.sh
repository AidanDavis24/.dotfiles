#!/bin/bash
LOGFILE=~/linuxsetup.log

if [ "$(uname)" != "Linux" ];then
	echo "Error: this script only works in linux." >> $LOGFILE
	exit 1
fi

if [ ! -d "$HOME/.TRASH" ]; then
	mkdir "$HOME/.TRASH"
	echo "Created .Trash Directory in $HOME" >> $LOGFILE
fi

if [ -f "$HOME/.nanorc" ]; then
	mv "$HOME/.nanorc" "$HOME/.bup.nanorc"
	echo "Renamed .nanorc to .bup.nanorc" >> $LOGFILE
fi

cp ./etc/.nanorc "$HOME/.nanorc"
echo "Copied /etc/nanorc to ~/.nanorc" >> $LOGFILE

echo "source ~/.dotfiles/etc/bashrc_custom">>"$HOME/.bashrc"
echo "Added 'source ~/.dotfiles/etc/bashrc custom' to ~/.bashrc." >>$LOGFILE

echo "Script successfully executed" >> $LOGFILE
