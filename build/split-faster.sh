#!/bin/bash

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

        git subsplit init git@github.com:subtree-test/main.git
        git subsplit update

        time git subsplit publish --heads="$HEAD" --no-tags "$SPLIT"

        popd

    done

    popd
}

split adapter-bar   src/Cache/adapter-bar:https://${GH_TOKEN}@github.com/subtree-test/foobar-bar.git       "master"
split adapter-foo   src/Cache/adapter-foo:git@github.com:subtree-test/foobar-foo       "master"
split foobar-common src/Cache/foobar-common:git@github.com:subtree-test/foobar-common  "master"
