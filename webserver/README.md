1. 本项目是对<a href="https://github.com/shijiantian/OAuth2">OAuth2</a>项目和其前端项目<a href="https://github.com/shijiantian/webClient">webClient</a>进行docker镜像打包与运行的项目
<br>
2. 执行项目下的脚本
```
sh buildImage.sh
```
进行镜像打包
<br>
3. 已打包好的镜像dockerhub下载
```
docker pull shijiantian/webserver:1.0
docker pull shijiantian/webclient:1.0
```
<br>
4. 运行项目还需要mysql和redis的docker镜像，可以拉取一个它们的官方镜像
```
docker pull mysql:5.6
docker pull redis
```
<br>
5. 镜像准备好之后执行
```
sh run_docker_images.sh
```
运行镜像
<br>
6. 镜像运行之后访问
<a href="http://127.0.0.1/webClient/login.html">http://127.0.0.1/webClient/login.html</a>进入登陆页面<br>
&nbsp;&nbsp;访问<a href="http://127.0.0.1:8083/swagger-ui.html">http://127.0.0.1:8083/swagger-ui.html</a>进入swagger页面<br>
7. 内置管理员用户:daming，密码:123456;ClientId：myClient,secret:mypassword。<br>swagger-ui页面授权需要点击<font color=red>右上角Authorize</font>按钮，填写用户名密码、在Setup client authentication下方选择Basic auth并填写CliendId和secret;之后选择scope点击下方的Authorize按钮完成授权
<br>
8. 停止并删除容器运行
```
sh clean_docker_containers.sh
```
