FROM node:18-alpine AS build-stage
LABEL MAINTAINER="josmar@montel.fi"

WORKDIR /build

COPY package.json yarn.lock ./

RUN \
  yarn install --frozen-lockfile && \
  yarn cache clean

COPY . ./

RUN \
  yarn build


FROM nginx:stable-alpine AS production
LABEL MAINTAINER="josmar@montel.fi"

COPY --from=build-stage /build/dist /usr/share/nginx/html
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
