#!/bin/sh
export VIRTUAL_ENV_DIR=~/.virtualenvs

if [ $1 = new -o $1 = n ]
then
    if [ $2 = -p ]
    then
        $3 -m venv $VIRTUAL_ENV_DIR/$4
    else
        python -m venv $VIRTUAL_ENV_DIR/$2
    fi
fi

if [ $1 = rm ]
then
    rm -rf $VIRTUAL_ENV_DIR/$2
fi

if [ $1 = ls -o $1 = l ]
then
    ls $VIRTUAL_ENV_DIR
fi
    


if [ $1 = activate -o $1 = a ]
then
    source $VIRTUAL_ENV_DIR/$2/bin/activate
    echo $VIRTUAL_ENV_DIR/$2/bin/activate
fi

if [ $1 = deactivate -o $1 = d ]
then
    deactivate
fi

