goto MAIN
ֲ���ս��ʬ�浵����
Hennessey
Ver 1.2
2021-04-19
:MAIN

@echo off
cls
echo "ֲ���ս��ʬ�浵����"
::echo " _   _                                           
::| | | | ___ _ __  _ __   ___  ___ ___  ___ _   _ 
::| |_| |/ _ \ '_ \| '_ \ / _ \/ __/ __|/ _ \ | | |
::|  _  |  __/ | | | | | |  __/\__ \__ \  __/ |_| |
::|_| |_|\___|_| |_|_| |_|\___||___/___/\___|\__, |
::                                          |___/ "

:SETTARGET
echo 1.�滻�浵
echo 2.���ݴ浵
set /p operating=��������Ҫ���еĲ���
if "%operating%"=="1"  (
    echo ��ʼ�滻�浵
    xcopy .\Archive\user1.dat "C:\ProgramData\PopCap Games\PlantsVsZombies\userdata\user1.dat" /Y
    echo �浵�滻�ɹ�
    echo ��������˳�
    pause
    goto QUIT
) 
if "%operating%"=="2"  (
    echo ��ʼ���ݴ浵
    xcopy  "C:\ProgramData\PopCap Games\PlantsVsZombies\userdata\user1.dat" .\Archive\user1.dat /Y
    echo �浵���ݳɹ�
    echo ��������˳�
    pause
    goto QUIT
) else (
    echo δ������Ч����
    echo ����ʧ��
    echo ������
    goto SETTARGET
)
:QUIT