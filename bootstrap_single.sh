#!/usr/bin/env bash


#########################################################
# Source https://mailinabox.email/ https://github.com/mail-in-a-box/mailinabox
# Updated by cryptopool.builders for crypto use...
# This script is intended to be ran from the multipool installer
#########################################################

if [ -z "${TAG}" ]; then
	TAG=v1.93
fi

# Clone the MultiPool repository if it doesn't exist.
if [ ! -d $HOME/multipool/yiimp_single ]; then
	echo Downloading MultiPool YiiMP Single Server Installer ${TAG}. . .
	git clone \
		-b ${TAG} --depth 1 \
		https://github.com/miningpirate/multipool_yiimp_single\
		$HOME/multipool/yiimp_single \
		< /dev/null 2> /dev/null

	echo
fi

# Change directory to it.
cd $HOME/multipool/yiimp_single

		

# Start setup script.
cd $HOME/multipool/yiimp_single
source start.sh
