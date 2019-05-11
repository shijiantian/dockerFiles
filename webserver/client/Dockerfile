#Dockerfile
FROM httpd
MAINTAINER jiantian.shi

#修改时区
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
#暴露80
EXPOSE 80
COPY webClient /usr/local/apache2/htdocs/webClient
CMD ["httpd-foreground"]
#End
