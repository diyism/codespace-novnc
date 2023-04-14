FROM accetto/debian-vnc-xfce-python-g3:vscode
EXPOSE 5901/tcp
EXPOSE 6901/tcp
ENV PORT=6901
ENTRYPOINT ["/dockerstartup/startup.sh"]
