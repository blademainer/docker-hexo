FROM node:8
ADD docker-entrypoint.sh /bin
RUN chmod +x /bin/docker-entrypoint.sh && npm install -g hexo-cli

ENTRYPOINT ["sh", "/bin/docker-entrypoint.sh"]

