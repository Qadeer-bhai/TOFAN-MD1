FROM node:lts-buster
RUN git clone https://github.com/Qadeeer-bhai/TOFAN-MD1/root/iktofan
WORKDIR /root/iktofan
RUN npm install && npm install -g pm2 || yarn install --network-concurrency 1
COPY . .
EXPOSE 9090
CMD ["npm", "start"]
