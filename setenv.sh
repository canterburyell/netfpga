#!/bin/bash

if [ "$0" != "-bash" ]; then
	echo "Make sure to execute this script via 'source'"
	echo "Exiting..."
	exit 0
fi

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd)
export NF_ROOT=$DIR
export NF_DESIGN_DIR=$NF_ROOT/projects/reference_nic
export NF_WORK_DIR=$NF_ROOT/temp

if [ -d "$NF_WORK_DIR" ] ; then
	echo "NF_WORK_DIR already exists, clearing"
	rm -rf $NF_WORK_DIR
fi
mkdir $NF_ROOT/temp

echo "Setting NF_ROOT=$NF_ROOT"
echo "Setting NF_DESIGN_DIR=$NF_DESIGN_DIR"
echo "Setting NF_WORK_DIR=$NF_WORK_DIR"
