FROM node:8
RUN npm install -g npm
ADD docker-entrypoint.sh /bin
RUN chmod +x /bin/docker-entrypoint.sh && npm install -g hexo-cli hexo-deployer-git

ENTRYPOINT ["sh", "/bin/docker-entrypoint.sh"]

