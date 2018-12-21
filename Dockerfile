FROM almir/webhook
COPY hooks.json /etc/webhook/hooks.json
COPY git-pull.sh /home/commands/git-pull.sh
CMD ["-verbose", "-hooks=/etc/webhook/hooks.json"]