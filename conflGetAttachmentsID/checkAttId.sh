#!/bin/bash
source /tmp/mailConfAttUpdate/config.conf_sh
curl -v -S -u ${USER}:${PASSWORD} -X GET -H "X-Atlassian-Token: no-check" "https://confluence.homeserver.com/rest/api/content/${PAGE_ID}/child/attachment?filename=${FILE}&expand=version,container"
