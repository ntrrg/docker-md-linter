FROM node:10.9.0-alpine
COPY ctx/package.json /
RUN npm install && npm cache clean --force
ENV CONFIG_FILES=".remarkignore .remarkrc"
VOLUME /files
COPY ctx/common/ /
ENTRYPOINT ["/entrypoint.sh"]
