FROM ntrrg/md-linter
COPY package.json /
RUN npm install && npm cache clean --force
ENV CONFIG_FILES="$CONFIG_FILES nodemon.json"
VOLUME /files

