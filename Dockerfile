# Stage 1 - build Nuxt app
FROM node:alpine as builder
WORKDIR /app
COPY package.json .
RUN npm install
COPY . .
RUN npm run build

# Stage 2 - move '.output' to clean image and run using 'node server/index.mjs'
FROM node:alpine
WORKDIR /app
COPY --from=builder /app/.output .
EXPOSE 3000
CMD ["node", "server/index.mjs"]
