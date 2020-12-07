FROM node
RUN cd /opt && \
    git clone https://github.com/RattyDAVE/open-cryptofolio.git

WORKDIR /opt/open-cryptofolio

RUN npm install && npm run build

CMD ["npm", "run", "start" ]
    
#Http Interface
EXPOSE 3000
