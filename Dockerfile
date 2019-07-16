FROM node:10.16.0

WORKDIR /yapi

COPY vendors /yapi/vendors

COPY config.json /yapi/config.json

RUN npm install -g yapi-cli --registry https://registry.npm.taobao.org

CMD ["node", "vendors/server/app.js"]