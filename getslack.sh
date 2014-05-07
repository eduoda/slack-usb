#!/bin/sh

VERSION="slackware*-14.1"
#SERVER="slackware.mirrors.tds.net"
SERVER="carroll.cac.psu.edu"
#SERVER="ftp.slackware.com"

rsync -arvvP --delete --stats --include="slackware*-*/extra/source/flashplayer-plugin" --include="slackware*-*/extra/source/java/" --exclude="source/*" --exclude "pasture/*" ${SERVER}::slackware/${VERSION} .
