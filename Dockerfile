FROM node:24-alpine AS build
RUN apk add --no-cache unzip
WORKDIR /app
COPY flowboard-source.zip /tmp/src.zip
RUN unzip -q /tmp/src.zip -d /app
RUN npm install --no-audit --no-fund
RUN npm run build

FROM node:24-alpine
RUN apk add --no-cache unzip
WORKDIR /app
COPY flowboard-source.zip /tmp/src.zip
RUN unzip -q /tmp/src.zip -d /app && rm /tmp/src.zip
RUN npm install --omit=dev --no-audit --no-fund
COPY --from=build /app/dist ./dist
ENV NODE_ENV=production \
    PORT=5174 \
    DATA_DIR=/data
EXPOSE 5174
HEALTHCHECK --interval=30s --timeout=5s --start-period=20s \
  CMD node -e "fetch('http://127.0.0.1:5174/api/health').then(r=>process.exit(r.ok?0:1)).catch(()=>process.exit(1))"
CMD ["node", "server/index.js"]
