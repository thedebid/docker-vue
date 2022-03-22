#Build Stage
FROM node:lts-alpine AS build-stage
WORKDIR /app
COPY package*.json ./
RUN npm install 
COPY . .
RUN npm run build

#Prod Stage
FROM nginx:stable-alpine AS prod-stage
COPY --from=build-stage /app/dist /usr/share/nginx/html/
EXPOSE 80
CMD ["nginx","-g","daemon off;"]