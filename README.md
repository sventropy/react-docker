# react-docker
https://dev.to/peterj/run-a-react-app-in-a-docker-container-kjn

## Create react app with typescript

https://create-react-app.dev/docs/adding-typescript/

```sh
npx create-react-app my-app --typescript
```

or add to existing 

```sh
npm install --save typescript @types/node @types/react @types/react-dom @types/jest
```

## Build and run

From repository root:

```sh
docker build -t react-docker-app .
docker run -it -p 7777:7777 react-docker-app
```