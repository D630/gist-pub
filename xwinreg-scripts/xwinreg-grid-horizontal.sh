#!/usr/bin/env bash

get-xids.sh | xwinpp print -I - --visible -P 0 | xwinreg -I - -L 1,max,grid-horiz,alias:0,all
