# gitpod-novnc
This is a repository for running "novnc" inside of gitpod, just use the prefix on this repository, or just click this link   
# Creating Accounts  
First, make sure you have a [github](https://github.com/join?ref_cta=Sign+up&ref_loc=header+logged+out&ref_page=%2F&source=header-home) account for syncing with gitpod.  
Then, Create a [Gitpod.io](https://gitpod.io/login/) account to set up your workspace.  
# Starting Your Workspace
部署到gitpod.io 用到的是 .gitpod.yml,
[https://gitpod.io/#https://github.com/diyism/gitpod-novnc/](https://gitpod.io/#https://github.com/diyism/codespace-novnc/)  
点击底下PORTS标签页6901那一行的第3按钮(Open Preview)就展示linux xfce桌面环境, 页面里点击"noVNC Full Client", 输入密码headless即可, 只是gitpod免费帐号每月只有50小时额度

要部署到railway.app 用到的是 Dockerfile, 但在里面加"ENV PORT=6901"没用, 需要到网页设置 Project Settings/Shared Variables 或 Service Settings/Variables里设PORT=6901, 还要在Service Settings/Settings里Environment/Domains/Generate Domain 获得域名后 才能访问到, 页面里点击"noVNC Full Client", 输入密码headless即可, railway免费帐号每月有500小时额度
