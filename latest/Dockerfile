FROM node:10.5.0-alpine
COPY package.json /
RUN npm install && npm cache clean --force
ENV CONFIG_FILES=".remarkignore .remarkrc"
COPY . /
VOLUME /files
ENTRYPOINT ["/entrypoint.sh"]

