FROM node
RUN cd /opt && \
    git clone https://github.com/RattyDAVE/open-cryptofolio.git

WORKDIR /opt/open-cryptofolio

RUN npm install 
#RUN npm run build

CMD ["node", "run", "build" ]
    
#Http Interface
EXPOSE 3000
