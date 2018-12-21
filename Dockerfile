FROM almir/webhook
COPY hooks.json /etc/webhook/hooks.json
COPY git-pull.sh /etc/commands/git-pull.sh
RUN ["chmod", "+x", "/etc/commands/git-pull.sh"]
CMD ["-verbose", "-hooks=/etc/webhook/hooks.json"]