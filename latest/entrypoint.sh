#!/bin/sh

for FILE in $CONFIG_FILES; do
  [ -f "files/$FILE" ] && cp -f "files/$FILE" /
done

if [ ! -f .plugins_installed -a -f "files/.remarkplugins" ]; then
  PLUGINS=""

  for PLUGIN in $(cat "files/.remarkplugins"); do
    PLUGINS="$PLUGINS $PLUGIN"
  done

  npm install --save-dev $PLUGINS
  echo "" > .plugins_installed
fi

exec npm start

