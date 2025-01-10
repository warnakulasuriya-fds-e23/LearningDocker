FROM node:20
ARG NODE_ENV=production
ENV NODE_ENV=${NODE_ENV}

WORKDIR /app
COPY package.json .
COPY npminstallScript.sh ./
RUN chmod +x npminstallScript.sh
RUN bash npminstallScript.sh
COPY . ./
ENV PORT=3000
EXPOSE ${PORT}
CMD ["node","index.js"] 