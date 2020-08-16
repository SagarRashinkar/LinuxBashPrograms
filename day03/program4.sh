#!/bin/bash -x

for files in `find ~/Desktop/TerminalCommands/work/Assignment1/backup/ -mtime +7`;
do
	echo $files;
	mv $files /var/log/;
done

