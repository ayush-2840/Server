#!/bin/bash
if [ -f servers/ib_server_pid.txt ]; then
    kill $(cat servers/ib_server_pid.txt)
    rm servers/ib_server_pid.txt
fi
