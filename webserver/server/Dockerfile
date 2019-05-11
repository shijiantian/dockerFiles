#Dockerfile
FROM java
MAINTAINER jiantian.shi

#修改时区
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
#暴露8083
EXPOSE 8083
COPY OAuth2 /opt/OAuth2
WORKDIR /opt/OAuth2/
CMD ["sh","start.sh"]
#CMD /usr/sbin/sshd -D
#End
