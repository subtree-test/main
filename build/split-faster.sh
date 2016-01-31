#!/bin/bash
SHELL = /bin/bash

split()
{
    SUBDIR=$1
    SPLIT=$2
    HEADS=$3

    mkdir -p $SUBDIR;

    pushd $SUBDIR;

    for HEAD in $HEADS
    do

        mkdir -p $HEAD

        pushd $HEAD

        git subsplit update

        time git subsplit publish "$SPLIT" --heads="$HEAD" --no-tags

        popd

    done

    popd
}

split adapter-bar   src/Cache/adapter-bar:git@github.com:subtree-test/adapter-bar       "master"
split adapter-foo   src/Cache/adapter-foo:git@github.com:subtree-test/adapter-foo       "master"
split foobar-common src/Cache/foobar-common:git@github.com:subtree-test/foobar-common  "master"
