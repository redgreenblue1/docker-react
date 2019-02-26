FROM nginx
WORKDIR "/app"
COPY package.json .
RUN npm install
COPY . .
RUN npm install build
RUN cp -R build /usr/share/nginx/html