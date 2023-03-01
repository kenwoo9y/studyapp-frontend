FROM node:18.14.2-alpine

ARG WORKDIR
# ARG CONTAINER_PORT

ENV HOME=/${WORKDIR} \
    LANG=C.UTF-8 \
    TZ=Asia/Tokyo \
    HOST=0.0.0.0

WORKDIR ${HOME}

# EXPOSE ${CONTAINER_PORT}
