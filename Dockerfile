FROM accetto/debian-vnc-xfce-python-g3:vscode
EXPOSE 6901
ENV PORT=6901
ENTRYPOINT ["/usr/bin/tinit", "--", "/dockerstartup/startup.sh"]
