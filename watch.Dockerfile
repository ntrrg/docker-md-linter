FROM node:10.9.0-alpine
COPY ctx/package-watch.json /package.json
RUN npm install && npm cache clean --force
ENV CONFIG_FILES="$CONFIG_FILES nodemon.json"
VOLUME /files
COPY ctx/common/ /
ENTRYPOINT ["/entrypoint.sh"]
