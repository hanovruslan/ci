#!/bin/bash -x
# shellcheck disable=SC2155

export uid=$(id -u node) \
&& export gid=$(id -g node) \
&& usermod -u 2001 node \
&& groupmod -g 2001 node \
&& { find / -group "${uid}" -exec chgrp -h node {} \;; } 2>/dev/null 1>&2; true \
&& { find / -user "${gid}" -exec chown -h node {} \;; } 2>/dev/null 1>&2; true
