FROM almir/webhook
RUN  apk add --update -t git

COPY webhook/hooks.json /etc/webhook/hooks.json
COPY commands/* /etc/commands/

RUN ["chmod -R", "+x", "/etc/commands"]

CMD ["-verbose", "-hooks=/etc/webhook/hooks.json"]