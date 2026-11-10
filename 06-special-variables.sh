#!/bin/bash/

echo "number of the arguments passed to the script: $@"
echo "number of the variables passed to the script: $#"
echo "script name: $0"
echo "present directory: $PWD"
echo "who is running the script: $USER"
echo "home directory of the current user: $HOME"
echo "PID of the current script: $$"
sleep100 &
echo "PID of the last background process: $!"


