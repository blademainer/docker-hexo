FROM node:8
npm install -g npm
ADD docker-entrypoint.sh /bin
RUN chmod +x /bin/docker-entrypoint.sh && npm install -g hexo-cli

ENTRYPOINT ["sh", "/bin/docker-entrypoint.sh"]

