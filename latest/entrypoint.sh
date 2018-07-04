#!/bin/sh

[ -f files/.remarkignore ] && cp -f files/.remarkignore /
[ -f files/.remarkrc ] && cp -f files/.remarkrc /

exec npm start

