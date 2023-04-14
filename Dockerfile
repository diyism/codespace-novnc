FROM accetto/debian-vnc-xfce-python-g3:vscode
EXPOSE 5901/TCP
EXPOSE 6901/TCP
ENV PORT=6901
ENTRYPOINT ["/usr/bin/tinit", "--", "/dockerstartup/startup.sh"]
CMD ["/usr/bin/tinit", "--", "/dockerstartup/startup.sh"]
