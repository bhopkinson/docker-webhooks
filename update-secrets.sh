#!/bin/sh
echo $HOOK_SECRETS
cp -f secrets.yaml secrets_backup.yaml
cp -f $HOOK_SECRETS secrets.yaml