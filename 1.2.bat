goto MAIN
植物大战僵尸存档工具
Hennessey
Ver 1.2
2021-04-19
:MAIN

@echo off
cls
echo "植物大战僵尸存档工具"
::echo " _   _                                           
::| | | | ___ _ __  _ __   ___  ___ ___  ___ _   _ 
::| |_| |/ _ \ '_ \| '_ \ / _ \/ __/ __|/ _ \ | | |
::|  _  |  __/ | | | | | |  __/\__ \__ \  __/ |_| |
::|_| |_|\___|_| |_|_| |_|\___||___/___/\___|\__, |
::                                          |___/ "

:SETTARGET
echo 1.替换存档
echo 2.备份存档
set /p operating=请输入需要进行的操作
if "%operating%"=="1"  (
    echo 开始替换存档
    xcopy .\Archive\user1.dat "C:\ProgramData\PopCap Games\PlantsVsZombies\userdata\user1.dat" /Y
    echo 存档替换成功
    echo 按任意键退出
    pause
    goto QUIT
) 
if "%operating%"=="2"  (
    echo 开始备份存档
    xcopy  "C:\ProgramData\PopCap Games\PlantsVsZombies\userdata\user1.dat" .\Archive\user1.dat /Y
    echo 存档备份成功
    echo 按任意键退出
    pause
    goto QUIT
) else (
    echo 未输入有效数字
    echo 操作失败
    echo 请重试
    goto SETTARGET
)
:QUIT