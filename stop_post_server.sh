#!/bin/bash
if [ -f servers/post_server_pid.txt ]; then
    kill $(cat servers/post_server_pid.txt)
    rm servers/post_server_pid.txt
fi
