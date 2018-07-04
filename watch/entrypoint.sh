#!/bin/sh

[ -f files/nodemon.json ] && cp -f files/nodemon.json /
[ -f files/.remarkignore ] && cp -f files/.remarkignore /
[ -f files/.remarkrc ] && cp -f files/.remarkrc /

exec npm start

