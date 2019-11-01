FROM mhart/alpine-node:11 AS builder
WORKDIR /app
COPY src/react-docker-app .
RUN yarn run build

FROM mhart/alpine-node
RUN yarn global add serve
WORKDIR /app
COPY --from=builder /app/build .
CMD ["serve", "-p", "7777", "-s", "."]
