# gitpod-novnc
This is a repository for running "novnc" inside of gitpod, just use the prefix on this repository, or just click this link   
# Creating Accounts  
First, make sure you have a [github](https://github.com/join?ref_cta=Sign+up&ref_loc=header+logged+out&ref_page=%2F&source=header-home) account for syncing with gitpod.  
Then, Create a [Gitpod.io](https://gitpod.io/login/) account to set up your workspace.  
# Starting Your Workspace
部署到gitpod.io 用到的是 .gitpod.yml,
[https://gitpod.io/#https://github.com/diyism/codespace-novnc/](https://gitpod.io/#https://github.com/diyism/codespace-novnc/)  
点击底下PORTS标签页6901那一行的第3按钮(Open Preview)就展示linux xfce桌面环境, 页面里点击"noVNC Full Client", 输入密码headless即可(gitpod环境变量VNC_PW 修改), 只是gitpod免费帐号每月只有50小时额度(对比github/codespaces是120/2=60小时额度)

要部署到 railway.app(有root有socket权限)或render.com(有root没socket权限) 用到的是 Dockerfile, 但在里面加"ENV PORT=6901"没用, 需要到网页设置 Project Settings/Shared Variables 或 Service Settings/Variables里设PORT=6901, 还要在Service Settings/Settings里Environment/Domains/Generate Domain 获得域名后 才能访问到, 页面里点击"noVNC Full Client", 输入密码headless即可(railway环境变量VNC_PW 修改), railway免费帐号每月有500小时额度

部署到huggingface需要复制Dockerfile.huggingface到huggingface的spaces files, 而huggingface环境 没root且没socket权限

deepnote.com 有docker image部署(+init.ipynb) + jupyter notebook + terminal, 有root有socket权限没有cap-add MKNOD权限(/dev/net/tun), 功能非常全面, 但是有机器人严格监测vnc,porxy等进程而自动suspend user, 所以无法部署这个项目, 磁盘5GB

replit.com   不能部署docker image, 禁止了udp数据包的出入(socat - UDP4-SENDTO:<source port detection server>:5353,sourceport=15443 无返回), tcp出去的数据包看到是从443出去, 但回去的数据包被处理 导致(): curl: (35) error:1408F10B:SSL routines:ssl3_get_record:wrong version number     执行  curl --resolve myproxy.com:443:127.0.0.1 https://myproxy.com  正常, 执行 curl --resolve myproxy.com:443:<外网ip> https://myproxy.com  就报 wrong version number, 而且持久磁盘1GB

glitch.com   不能部署docker image, 可以udp监听8443, 持久磁盘0.2GB, 免费额度每月1000小时
