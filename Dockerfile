FROM node:14

WORKDIR /usr/src2

ENV DATABASE_URL=mongodb+srv://andres:andres1234@personal.xqjoe.mongodb.net/Personal?retryWrites=true&w=majority
ENV PRIVATE_KEY='Peter Parker'

COPY ["./package.json", "./yarn.lock", "/usr/src2/"]

COPY ./ /usr/src2/

RUN yarn install

CMD ["yarn", "start"]