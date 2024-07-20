#!/bin/bash
if [ -f servers/group_convo_server_pid.txt ]; then
    kill $(cat servers/group_convo_server_pid.txt)
    rm servers/group_convo_server_pid.txt
fi
