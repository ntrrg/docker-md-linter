FROM ntrrg/md-linter
COPY package.json /
RUN npm install && npm cache clean --force
COPY entrypoint.sh /
VOLUME /files

