# 调度优先级是个整数值，从20（最高优先级）到+19（最低优先级）
# 默认情况下，bash shell以优先级0来启动所有进程
# 最低值20是最高优先级，而最高值19是最低优先级

nice -n 10 ./test4.sh > test4.out &
#nice -10 ./test4.sh > test4.out &

ps -p 4973 -o pid,ppid,ni,cmd

renice -n 0 -p 5055