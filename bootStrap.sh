#!/bin/bash

configs="bashrc tmux.conf .ssh/config"

for config in $configs; do
    configFilename=$(echo ./${config})
    cp $config ~/${configFilename}
    chmod 400 ~/${configFilename}
done
