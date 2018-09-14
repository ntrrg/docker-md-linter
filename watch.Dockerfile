FROM node:10.10.0-alpine
COPY watch/package.json /
RUN npm install && npm cache clean --force
ENV CONFIG_FILES=".remarkignore .remarkrc nodemon.json"
VOLUME /files
COPY common/ /
ENTRYPOINT ["/entrypoint.sh"]
