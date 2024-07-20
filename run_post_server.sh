#!/bin/bash
python3 servers/post_server.py &
echo $! > servers/post_server_pid.txt
