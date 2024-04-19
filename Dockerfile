FROM node:20

WORKDIR /

COPY package*.json ./

RUN npm install

COPY . .

# ${PORT}
ENV PORT=1337   
# ${HOSTNAME}
ENV HOSTNAME="mydocker"

RUN echo "mydocker" > /etc/hostname

CMD ["node", "index.js"]

# docker run -p 1337:1337 -h mydocker app_docker_m1_tp1