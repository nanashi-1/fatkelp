#!/bin/bash

cp fatkelp /usr/bin
wget https://raw.githubusercontent.com/dblencowe/fatkelp/main/fatkelp -O /usr/bin/fatkelp
chmod +x /usr/bin/fatkelp

mkdir -p /usr/share/fatkelp
wget https://raw.githubusercontent.com/dblencowe/fatkelp/main/global.fk -O /usr/share/fatkelp/global.fk