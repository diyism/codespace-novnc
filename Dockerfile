FROM accetto/debian-vnc-xfce-python-g3:vscode

RUN apt-get update && \
    apt-get install -y tini

COPY dockerstartup /dockerstartup

ENTRYPOINT ["/usr/bin/tini", "--", "/dockerstartup/startup.sh"]
