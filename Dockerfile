FROM accetto/debian-vnc-xfce-python-g3:vscode
ENTRYPOINT ["/usr/bin/tini", "--", "/dockerstartup/startup.sh"]
