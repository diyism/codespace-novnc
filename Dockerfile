FROM accetto/debian-vnc-xfce-python-g3:vscode
ENV PORT=6901
ENTRYPOINT ["sudo", "-E", "/usr/bin/tini", "--", "/dockerstartup/startup.sh"]
