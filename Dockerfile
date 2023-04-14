FROM accetto/debian-vnc-xfce-python-g3:vscode
ENV PORT=6901
ENTRYPOINT ["/usr/bin/tini", "--", "/dockerstartup/startup.sh"]
CMD ["/usr/bin/tini", "--", "/dockerstartup/startup.sh"]
