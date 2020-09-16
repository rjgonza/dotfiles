#!/bin/bash

configs=".bashrc .tmux.conf ..ssh/config"

for config in $configs; do
    cp ${config#.} ~/.${config##*.}
done

chmod 600 ~/.ssh/config