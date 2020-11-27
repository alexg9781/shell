#!/bin/bash

# testing the at command

at -f 4.sh 22:10

at -f 5.sh now

atq   #列出等待的作业
atrm 18  #删除作业