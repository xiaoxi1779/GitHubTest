# 设置基础镜像
FROM openjdk:latest
# 定义作者
MAINTAINER test
# 将dist文件中的内容复制到 /etc/nginx/html/ 这个目录下面
COPY target/  /www
# 将配置文件中的内容复制到 /etc/nginx 这个目录下面(增加自己的代理及一些配置)
WORKDIR /www
RUN java -jar GitHubTest-0.0.1-SNAPSHOT.jar
EXPOSE 8090
CMD ["/bin/bash"]
