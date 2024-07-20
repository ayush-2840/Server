#!/bin/bash
python3 servers/ib_server.py &
echo $! > servers/ib_server_pid.txt
