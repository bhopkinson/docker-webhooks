#!/bin/sh
echo $SECRETS
cat $SECRETS
cp -f secrets.yaml secrets_backup.yaml
cp -f $SECRETS secrets.yaml