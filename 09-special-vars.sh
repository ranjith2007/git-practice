#!/bin/bash

echo "All variables passed to the script: $@"
echo "Number of variables passed: $#"
echo "script name: $0"
echo "current working directory: $PWD"
echo "Home directory of current script: $HOME"
echo "PID of the script executing now: $$"
sleep 100 &
echo "PID of last background command: $!"