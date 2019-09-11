#!/bin/sh

HOST_SERVER=${HOST_SERVER:-\$host}

/bin/sed -i "s/<proxy_pass_placeholder>/${TARGET_SERVER}/" /etc/nginx/conf.d/default.conf

nginx -g "daemon off;"
