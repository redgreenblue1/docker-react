FROM node:alpine as build-stage
WORKDIR '/app'
COPY package.json .
RUN npm install
COPY . .
CMD ["npm","install","build"]

FROM nginx
COPY --from=build-stage /app/build/ /usr/share/nginx/html
