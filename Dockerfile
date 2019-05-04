FROM ubuntu
RUN apt-get update && \
    apt-get install -y \
            git \
            nodejs \
            npm
RUN git clone \
    https://github.com/saacsos/cpe2.git
WORKDIR /cpe2
RUN npm install
EXPOSE 9000
CMD ["npm", "start"]
