#!/bin/bash

ZSHRC_FILE=~/.zshrc

if [ -f $ZSHRC_FILE ]; then
	cp $ZSHRC_FILE $ZSHRC_FILE.`date +%y%m%d_%H%M%S`;
fi

cp ./zshrc $ZSHRC_FILE

ZPROFILE_FILE=~/.zprofile

if [ -f $ZPROFILE_FILE ]; then
	cp $ZPROFILE_FILE $ZPROFILE_FILE.`date +%y%m%d_%H%M%S`;
fi

cp ./zprofile $ZPROFILE_FILE
