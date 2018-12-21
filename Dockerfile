FROM almir/webhook
RUN  apk add --update -t git

COPY hooks.json /etc/webhook/hooks.json

COPY git-pull.sh /etc/commands/git-pull.sh
RUN ["chmod", "+x", "/etc/commands/git-pull.sh"]

COPY update-secrets.sh /etc/commands/uodate-secrets.sh
RUN ["chmod", "+x", "/etc/commands/update-secrets.sh"]

CMD ["-verbose", "-hooks=/etc/webhook/hooks.json"]