#Nuxt3 dockerfile for production
FROM node:alpine as builder
WORKDIR /app
COPY package.json .
RUN npm install
COPY . .
RUN npm run build

# Stage 2 - move .output server to a new image and run using node index.mjs
FROM node:alpine
WORKDIR /app
COPY --from=builder /app/.output/server .
EXPOSE 3000
CMD ["node", "index.mjs"]
