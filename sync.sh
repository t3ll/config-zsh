#!/bin/bash

ZSHRC_FILE=~/.zshrc

if [ -f $ZSHRC_FILE ]; then
	cp $ZSHRC_FILE ./zshrc;
fi

ZPROFILE_FILE=~/.zprofile

if [ -f $ZPROFILE_FILE ]; then
	cp $ZPROFILE_FILE ./zprofile;
fi
