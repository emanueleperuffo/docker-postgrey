#!/bin/bash
set -e
source /build/buildconfig
set -x

## Installing postgrey
$minimal_apt_get_install postgrey

## Setting up postgres service
mkdir /etc/service/postgrey
cp /build/runit/postgrey /etc/service/postgrey/run