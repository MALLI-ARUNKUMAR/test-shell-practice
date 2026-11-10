#!/bin/bash

set -e

trap 'echo "there is error in the $LINENO, Command: $BASH_COMMAND" 'ERR

echo "my name is arunkumar"
echoo "i am learning shell scripting"
echo "i am a good boy"