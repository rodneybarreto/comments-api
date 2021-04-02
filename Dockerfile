FROM mileschou/lapis:alpine
WORKDIR /opt/minipets/comments
COPY . /opt/minipets/comments
EXPOSE 8083
CMD ["lapis","server","production"]
