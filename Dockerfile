FROM nginx
RUN mkdir /app
ADD default.conf /etc/nginx/conf.d/default.conf
ARG VERSION
RUN sed -i.bak "s/VERSION/${VERSION}/g" /etc/nginx/conf.d/default.conf
