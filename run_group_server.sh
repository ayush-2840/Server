#!/bin/bash
python3 servers/group_convo_server.py &
echo $! > servers/group_convo_server_pid.txt
