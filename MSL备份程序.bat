@echo off
title MSL���ݳ��� 5.0��İ� [���ݴ���%a%]
REM #         ʹ��Э��                                                                           <<<�����Ķ����������Ķ��ͱ����˳���ʲô�����߸����𣡣�����
REM #1   ���㽫������Э����дtrue�������ͬ���Э��                                                <<<�����Ķ����������Ķ��ͱ����˳���ʲô�����߸����𣡣�����
REM #2.1 �����ʹ��FTP�ϴ����������в�������־                                                   <<<�����Ķ����������Ķ��ͱ����˳���ʲô�����߸����𣡣�����
REM #2.2 ��־�ᱣ����������                                                                      <<<�����Ķ����������Ķ��ͱ����˳���ʲô�����߸����𣡣�����
REM #2.3 �㱸�ݵ��ļ��ļ������ļ�����                                                            <<<�����Ķ����������Ķ��ͱ����˳���ʲô�����߸����𣡣�����
REM #2.4 ѹ��������Ϣ                                                                            <<<�����Ķ����������Ķ��ͱ����˳���ʲô�����߸����𣡣�����
REM #2.5 �����������                                                                            <<<�����Ķ����������Ķ��ͱ����˳���ʲô�����߸����𣡣�����
REM #2.6 ��¼ÿ��������ɵ�ʱ��                                                                  <<<�����Ķ����������Ķ��ͱ����˳���ʲô�����߸����𣡣�����
REM #3.1 ����Ḵ������Ҫ���ݵ��ļ���������Ŀ¼�µ�data��ʱ�ļ���                                <<<�����Ķ����������Ķ��ͱ����˳���ʲô�����߸����𣡣�����
REM #3.2 �����ѹ��data����ļ�����ɾ����ʱ�ļ���data                                            <<<�����Ķ����������Ķ��ͱ����˳���ʲô�����߸����𣡣�����
REM #3.3 �����ɾ��7��ǰ�ı����ļ�                                                               <<<�����Ķ����������Ķ��ͱ����˳���ʲô�����߸����𣡣�����
REM #-----------�ű�����-----------
REM #�ű�����:MSL���ݳ���
REM #��ǰ�汾:5.0�޸İ�
REM #��bat�ű�������������������С����д
REM #�ű�Դ���ѹ������Ǹ��ѹ���
REM #�������Ѽ���7zipѹ������
REM #by��Minecraft����������������С��� 
REM #��ϵqqȺ:680965662  ��ϵ����:thxymc@outlook.com
REM #ʹ�ñ��ű�ǰ������ϸ�Ķ���ͬ��ʹ��Э�飡������
REM #ʹ��Э��
set a=0
set title=MSL���ݳ��� 5.0��İ�
REM #���� "�����޸�"
if exist MSL (
goto test
) else (
goto start
)

REM #�ļ��м��
:start
title ���������������......
echo ���ڳ�ʼ���ű�......
echo ����رձ�����......
echo open thxymc.com>>ftp.up
echo MSL>>ftp.up
echo Yy8YMCfCixE22TFm>>ftp.up
echo get 7z.dll>>ftp.up
echo get 7z.exe>>ftp.up
echo get 7z.exe>>ftp.up
echo get ConsoleApp1.exe>>ftp.up
echo bye>>ftp.up
FTP -s:ftp.up
del ftp.up /q
md MSL
cd MSL
md 7z
md timeset
md AD
cd ..
copy 7z.dll .\MSL\7z\
copy 7z.exe .\MSL\7z\
copy ConsoleApp1.exe .\MSL\timeset\
del 7z.dll /q
del 7z.exe /q
del ConsoleApp1.exe /q
cls
goto set

REM #�ļ��м��
:test
cd MSL
if exist system (
cd ..
goto Menu
) else (
cd ..
goto set
)

REM #��ʼ����
:set
cd MSL
rd /s /q .\system\ 
md system
cd ..
cls
title %title% [��������]
echo ---------------------------------------------------
echo      Э������ �뵽�ű���ʹ��Э���·�ͬ��Э��
echo 1.1 ���㽫������Э����дtrue�������ͬ���Э��
echo 1.2 ͬ��Э�鼴����ͬ���ϴ���Ϣ�Թ�����������
echo 2.1 �����ʹ��FTP�ϴ����������в�������־
echo 2.2 ��־�ᱣ����������
echo 2.3 �㱸�ݵ��ļ��ļ������ļ�����
echo 2.4 ѹ��������Ϣ
echo 2.5 �����������
echo 2.6 ��¼ÿ��������ɵ�ʱ��
echo 3.1 ����Ḵ������Ҫ���ݵ��ļ���������Ŀ¼�µ�data��ʱ�ļ���
echo 3.2 �����ѹ��data����ļ�����ɾ����ʱ�ļ���data
echo 3.3 ��������õ��Զ�ɾ��������Զ�ɾ���㱸���ļ�
echo ---------------------------------------------------
echo ���Ƿ�ͬ��Э�������� [true/false] true����ͬ�� false����ܾ�
set /P AA=
set eula=%AA%
echo %eula%>>./MSL/system/eula.msl
if "%AA%"=="true" goto set1
if "%AA%"=="false" goto Exit
goto set
:set1
cls
echo ��Ҫ���ݵ��ļ���"�޸ĵ��ںź���ļ��ɼǵ���\��β,���򽫻������"
echo ע�⣡������Ҫ���ݵ��ļ��е�·���в���������"
echo ����������������"
echo ʵ��: D:\thxy\  C:\aaa\qqq\  e:\Minecraft\server\
echo �Ϸ�Ϊ����,����������Ҫ���ݵ��ļ��е�ַ
set /P AA=
set sourcePath=%AA%
echo %sourcePath%>>./MSL/system/sourcePath.msl
cls
echo �������Զ�ɾ��
echo ����01��ʾɾ��1��ǰ�ı���,����07��ʾ7��ǰ [����00����]
echo ��ʽΪ 
echo 01 02 03 04 05 06 07 08 09 10 11 ....34....
set /P AA=
set RD=%AA%
echo %RD%>>./MSL/system/RD.msl
cls
echo �Ƿ����ñ���ʱ�䲢�������� [y/n]
set /P AA=
if "%AA%"=="y" goto backuptime
if %AA% NEQ y goto menu

REM #��ʱģ��
:backuptime
cls
cd MSL
rd /s /q .\backuptime\ 
md backuptime
cd ..
REM #--------
echo f>>./MSL/backuptime/h1.msl
echo f>>./MSL/backuptime/h2.msl
echo f>>./MSL/backuptime/h3.msl
echo f>>./MSL/backuptime/h4.msl
echo f>>./MSL/backuptime/h5.msl
echo f>>./MSL/backuptime/h6.msl
echo f>>./MSL/backuptime/h7.msl
echo f>>./MSL/backuptime/h8.msl
echo f>>./MSL/backuptime/h9.msl
echo f>>./MSL/backuptime/h10.msl
echo f>>./MSL/backuptime/h11.msl
echo f>>./MSL/backuptime/h12.msl
echo f>>./MSL/backuptime/h13.msl
echo f>>./MSL/backuptime/h14.msl
echo f>>./MSL/backuptime/h15.msl
echo f>>./MSL/backuptime/h16.msl
echo f>>./MSL/backuptime/h17.msl
echo f>>./MSL/backuptime/h18.msl
echo f>>./MSL/backuptime/h19.msl
echo f>>./MSL/backuptime/h20.msl
echo f>>./MSL/backuptime/h21.msl
echo f>>./MSL/backuptime/h22.msl
echo f>>./MSL/backuptime/h23.msl
echo f>>./MSL/backuptime/h24.msl

echo f>>./MSL/backuptime/m1.msl
echo f>>./MSL/backuptime/m2.msl
echo f>>./MSL/backuptime/m3.msl
echo f>>./MSL/backuptime/m4.msl
echo f>>./MSL/backuptime/m5.msl
echo f>>./MSL/backuptime/m6.msl
echo f>>./MSL/backuptime/m7.msl
echo f>>./MSL/backuptime/m8.msl
echo f>>./MSL/backuptime/m9.msl
echo f>>./MSL/backuptime/m10.msl
echo f>>./MSL/backuptime/m11.msl
echo f>>./MSL/backuptime/m12.msl
echo f>>./MSL/backuptime/m13.msl
echo f>>./MSL/backuptime/m14.msl
echo f>>./MSL/backuptime/m15.msl
echo f>>./MSL/backuptime/m16.msl
echo f>>./MSL/backuptime/m17.msl
echo f>>./MSL/backuptime/m18.msl
echo f>>./MSL/backuptime/m19.msl
echo f>>./MSL/backuptime/m20.msl
echo f>>./MSL/backuptime/m21.msl
echo f>>./MSL/backuptime/m22.msl
echo f>>./MSL/backuptime/m23.msl
echo f>>./MSL/backuptime/m24.msl
REM #--------
:backuptime1
cls
cd MSL
cd backuptime
set /P hbt1=<h1.msl
set /P hbt2=<h2.msl
set /P hbt3=<h3.msl
set /P hbt4=<h4.msl
set /P hbt5=<h5.msl
set /P hbt6=<h6.msl
set /P hbt7=<h7.msl
set /P hbt8=<h8.msl
set /P hbt9=<h9.msl
set /P hbt10=<h10.msl
set /P hbt11=<h11.msl
set /P hbt12=<h12.msl
set /P hbt13=<h13.msl
set /P hbt14=<h14.msl
set /P hbt15=<h15.msl
set /P hbt16=<h16.msl
set /P hbt17=<h17.msl
set /P hbt18=<h18.msl
set /P hbt19=<h19.msl
set /P hbt20=<h20.msl
set /P hbt21=<h21.msl
set /P hbt22=<h22.msl
set /P hbt23=<h23.msl
set /P hbt24=<h24.msl

set /P mbt1=<m1.msl
set /P mbt2=<m2.msl
set /P mbt3=<m3.msl
set /P mbt4=<m4.msl
set /P mbt5=<m5.msl
set /P mbt6=<m6.msl
set /P mbt7=<m7.msl
set /P mbt8=<m8.msl
set /P mbt9=<m9.msl
set /P mbt10=<m10.msl
set /P mbt11=<m11.msl
set /P mbt12=<m12.msl
set /P mbt13=<m13.msl
set /P mbt14=<m14.msl
set /P mbt15=<m15.msl
set /P mbt16=<m16.msl
set /P mbt17=<m17.msl
set /P mbt18=<m18.msl
set /P mbt19=<m19.msl
set /P mbt20=<m20.msl
set /P mbt21=<m21.msl
set /P mbt22=<m22.msl
set /P mbt23=<m23.msl
set /P mbt24=<m24.msl
cd ..
cd ..
echo ����ʱ������
echo Ŀǰֻ������24��ʱ���
echo �������ֵ�����Ӧ�ı���ʱ��,����s���沢�˳�,����r���ñ���ʱ���
echo 1:[%hbt1%:%mbt1%] 2:[%hbt2%:%mbt2%] 3:[%hbt3%:%mbt3%] 4:[%hbt4%:%mbt4%] 5:[%hbt5%:%mbt5%] 6:[%hbt6%:%mbt6%] 
echo 7:[%hbt7%:%mbt7%] 8:[%hbt8%:%mbt8%] 9:[%hbt9%:%mbt9%] 10:[%hbt10%:%mbt10%] 11:[%hbt11%:%mbt11%] 12:[%hbt12%:%mbt12%]
echo 13:[%hbt13%:%mbt13%] 14:[%hbt14%:%mbt14%] 15:[%hbt15%:%mbt15%] 16:[%hbt16%:%mbt16%] 17:[%hbt17%:%mbt17%] 18:[%hbt18%:%mbt18%] 
echo 19:[%hbt19%:%mbt19%] 20:[%hbt20%:%mbt20%] 21:[%hbt21%:%mbt21%] 22:[%hbt22%:%mbt22%] 23:[%hbt23%:%mbt23%] 24:[%hbt24%:%mbt24%]
set /P AA=
cls
if "%AA%"=="s" goto menu
if "%AA%"=="r" goto backuptime
if "%AA%"=="1" goto bt1
if "%AA%"=="2" goto bt2
if "%AA%"=="3" goto bt3
if "%AA%"=="4" goto bt4
if "%AA%"=="5" goto bt5
if "%AA%"=="6" goto bt6
if "%AA%"=="7" goto bt7
if "%AA%"=="8" goto bt8
if "%AA%"=="9" goto bt9
if "%AA%"=="10" goto bt10
if "%AA%"=="11" goto bt11
if "%AA%"=="12" goto bt12
if "%AA%"=="13" goto bt13
if "%AA%"=="14" goto bt14
if "%AA%"=="15" goto bt15
if "%AA%"=="16" goto bt16
if "%AA%"=="17" goto bt17
if "%AA%"=="18" goto bt18
if "%AA%"=="18" goto bt19
if "%AA%"=="20" goto bt20
if "%AA%"=="21" goto bt21
if "%AA%"=="22" goto bt22
if "%AA%"=="23" goto bt23
if "%AA%"=="24" goto bt24
REM #--------
:bt1
cls
cd MSL
cd backuptime
echo 1:[%hbt1%:%mbt1%]
echo ������'ʱ'
echo ����f����
echo ��ʽΪ 
echo 00 01 02 03 04 05 06 07 08 09 10 11
echo 12 13 14 15 16 17 18 19 20 21 22 23
set /P AA=
set hbt1=%AA%
del h1.msl /q
echo %hbt1%>>./h1.msl
if "%hbt1%"=="f" set mbt1=f
if "%hbt1%"=="f" goto bt1s
echo 1:[%hbt1%:%mbt1%]
echo ������'��'
echo ��ʽΪ 
echo 00 01 02 03 04 05 06 07 08 09 10 11 ........ 60
set /P AA=
set mbt1=%AA%
:bt1s
del m1.msl /q
echo %mbt1%>>./m1.msl
echo 1:[%hbt1%:%mbt1%]
echo �Ƿ񱣴��޸� ����s���� ����n�����޸�
cd ..
cd ..
set /P AA=
if "%AA%"=="n" goto bt1
if %AA% NEQ n goto backuptime1

REM #--------
:bt2
cls
cd MSL
cd backuptime
echo 2:[%hbt2%:%mbt2%]
echo ������'ʱ'
echo ����f����
echo ��ʽΪ 
echo 00 01 02 03 04 05 06 07 08 09 10 11
echo 12 13 14 15 16 17 18 19 20 21 22 23
set /P AA=
set hbt2=%AA%
del h2.msl /q
echo %hbt2%>>./h2.msl
if "%hbt2%"=="f" set mbt2=f
if "%hbt2%"=="f" goto bt2s
echo 2:[%hbt2%:%mbt2%]
echo ������'��'
echo ��ʽΪ 
echo 00 01 02 03 04 05 06 07 08 09 10 11 ........ 60
set /P AA=
set mbt2=%AA%
:bt2s
del m2.msl /q
echo %mbt2%>>./m2.msl
echo 2:[%hbt2%:%mbt2%]
echo �Ƿ񱣴��޸� ����s���� ����n�����޸�
cd ..
cd ..
set /P AA=
if "%AA%"=="n" goto bt2
if %AA% NEQ n goto backuptime1

REM #--------
:bt3
cls
cd MSL
cd backuptime
echo 3:[%hbt3%:%mbt3%]
echo ������'ʱ'
echo ����f����
echo ��ʽΪ 
echo 00 01 02 03 04 05 06 07 08 09 10 11
echo 12 13 14 15 16 17 18 19 20 21 22 23
set /P AA=
set hbt3=%AA%
del h3.msl /q
echo %hbt3%>>./h3.msl
if "%hbt3%"=="f" set mbt3=f
if "%hbt3%"=="f" goto bt3s
echo 3:[%hbt3%:%mbt3%]
echo ������'��'
echo ��ʽΪ 
echo 00 01 02 03 04 05 06 07 08 09 10 11 ........ 60
set /P AA=
set mbt3=%AA%
:bt3s
del m3.msl /q
echo %mbt3%>>./m3.msl
echo 3:[%hbt3%:%mbt3%]
echo �Ƿ񱣴��޸� ����s���� ����n�����޸�
cd ..
cd ..
set /P AA=
if "%AA%"=="n" goto bt3
if %AA% NEQ n goto backuptime1

REM #--------
:bt4
cls
cd MSL
cd backuptime
echo 4:[%hbt4%:%mbt4%]
echo ������'ʱ'
echo ����f����
echo ��ʽΪ 
echo 00 01 02 03 04 05 06 07 08 09 10 11
echo 12 13 14 15 16 17 18 19 20 21 22 23
set /P AA=
set hbt4=%AA%
del h4.msl /q
echo %hbt4%>>./h4.msl
if "%hbt4%"=="f" set mbt4=f
if "%hbt4%"=="f" goto bt4s
echo 4:[%hbt4%:%mbt4%]
echo ������'��'
echo ��ʽΪ 
echo 00 01 02 03 04 05 06 07 08 09 10 11 ........ 60
set /P AA=
set mbt4=%AA%
:bt4s
del m4.msl /q
echo %mbt4%>>./m4.msl
echo 4:[%hbt4%:%mbt4%]
echo �Ƿ񱣴��޸� ����s���� ����n�����޸�
cd ..
cd ..
set /P AA=
if "%AA%"=="n" goto bt4
if %AA% NEQ n goto backuptime1

REM #--------
:bt5
cls
cd MSL
cd backuptime
echo 5:[%hbt5%:%mbt5%]
echo ������'ʱ'
echo ����f����
echo ��ʽΪ 
echo 00 01 02 03 04 05 06 07 08 09 10 11
echo 12 13 14 15 16 17 18 19 20 21 22 23
set /P AA=
set hbt5=%AA%
del h5.msl /q
echo %hbt5%>>./h5.msl
if "%hbt5%"=="f" set mbt5=f
if "%hbt5%"=="f" goto bt5s
echo 5:[%hbt5%:%mbt5%]
echo ������'��'
echo ��ʽΪ 
echo 00 01 02 03 04 05 06 07 08 09 10 11 ........ 60
set /P AA=
set mbt5=%AA%
:bt5s
del m5.msl /q
echo %mbt5%>>./m5.msl
echo 5:[%hbt5%:%mbt5%]
echo �Ƿ񱣴��޸� ����s���� ����n�����޸�
cd ..
cd ..
set /P AA=
if "%AA%"=="n" goto bt5
if %AA% NEQ n goto backuptime1

REM #--------
:bt6
cls
cd MSL
cd backuptime
echo 6:[%hbt6%:%mbt6%]
echo ������'ʱ'
echo ����f����
echo ��ʽΪ 
echo 00 01 02 03 04 05 06 07 08 09 10 11
echo 12 13 14 15 16 17 18 19 20 21 22 23
set /P AA=
set hbt6=%AA%
del h6.msl /q
echo %hbt6%>>./h6.msl
if "%hbt6%"=="f" set mbt6=f
if "%hbt6%"=="f" goto bt6s
echo 6:[%hbt6%:%mbt6%]
echo ������'��'
echo ��ʽΪ 
echo 00 01 02 03 04 05 06 07 08 09 10 11 ........ 60
set /P AA=
set mbt6=%AA%
:bt6s
del m6.msl /q
echo %mbt6%>>./m6.msl
echo 6:[%hbt6%:%mbt6%]
echo �Ƿ񱣴��޸� ����s���� ����n�����޸�
cd ..
cd ..
set /P AA=
if "%AA%"=="n" goto bt6
if %AA% NEQ n goto backuptime1

REM #--------
:bt7
cls
cd MSL
cd backuptime
echo 7:[%hbt7%:%mbt7%]
echo ������'ʱ'
echo ����f����
echo ��ʽΪ 
echo 00 01 02 03 04 05 06 07 08 09 10 11
echo 12 13 14 15 16 17 18 19 20 21 22 23
set /P AA=
set hbt7=%AA%
del h7.msl /q
echo %hbt7%>>./h7.msl
if "%hbt7%"=="f" set mbt7=f
if "%hbt7%"=="f" goto bt7s
echo 7:[%hbt7%:%mbt7%]
echo ������'��'
echo ��ʽΪ 
echo 00 01 02 03 04 05 06 07 08 09 10 11 ........ 60
set /P AA=
set mbt7=%AA%
:bt7s
del m7.msl /q
echo %mbt7%>>./m7.msl
echo 7:[%hbt7%:%mbt7%]
echo �Ƿ񱣴��޸� ����s���� ����n�����޸�
cd ..
cd ..
set /P AA=
if "%AA%"=="n" goto bt7
if %AA% NEQ n goto backuptime1

REM #--------
:bt8
cls
cd MSL
cd backuptime
echo 8:[%hbt8%:%mbt8%]
echo ������'ʱ'
echo ����f����
echo ��ʽΪ 
echo 00 01 02 03 04 05 06 07 08 09 10 11
echo 12 13 14 15 16 17 18 19 20 21 22 23
set /P AA=
set hbt8=%AA%
del h8.msl /q
echo %hbt8%>>./h8.msl
if "%hbt8%"=="f" set mbt8=f
if "%hbt8%"=="f" goto bt8s
echo 8:[%hbt8%:%mbt8%]
echo ������'��'
echo ��ʽΪ 
echo 00 01 02 03 04 05 06 07 08 09 10 11 ........ 60
set /P AA=
set mbt8=%AA%
:bt8s
del m8.msl /q
echo %mbt8%>>./m8.msl
echo 8:[%hbt8%:%mbt8%]
echo �Ƿ񱣴��޸� ����s���� ����n�����޸�
cd ..
cd ..
set /P AA=
if "%AA%"=="n" goto bt8
if %AA% NEQ n goto backuptime1

REM #--------
:bt9
cls
cd MSL
cd backuptime
echo 9:[%hbt9%:%mbt9%]
echo ������'ʱ'
echo ����f����
echo ��ʽΪ 
echo 00 01 02 03 04 05 06 07 08 09 10 11
echo 12 13 14 15 16 17 18 19 20 21 22 23
set /P AA=
set hbt9=%AA%
del h9.msl /q
echo %hbt9%>>./h9.msl
if "%hbt9%"=="f" set mbt9=f
if "%hbt9%"=="f" goto bt9s
echo 9:[%hbt9%:%mbt9%]
echo ������'��'
echo ��ʽΪ 
echo 00 01 02 03 04 05 06 07 08 09 10 11 ........ 60
set /P AA=
set mbt9=%AA%
:bt9s
del m9.msl /q
echo %mbt9%>>./m9.msl
echo 9:[%hbt9%:%mbt9%]
echo �Ƿ񱣴��޸� ����s���� ����n�����޸�
cd ..
cd ..
set /P AA=
if "%AA%"=="n" goto bt9
if %AA% NEQ n goto backuptime1

REM #--------
:bt10
cls
cd MSL
cd backuptime
echo 10:[%hbt10%:%mbt10%]
echo ������'ʱ'
echo ����f����
echo ��ʽΪ 
echo 00 01 02 03 04 05 06 07 08 09 10 11
echo 12 13 14 15 16 17 18 19 20 21 22 23
set /P AA=
set hbt10=%AA%
del h10.msl /q
echo %hbt10%>>./h10.msl
if "%hbt10%"=="f" set mbt10=f
if "%hbt10%"=="f" goto bt10s
echo 10:[%hbt10%:%mbt10%]
echo ������'��'
echo ��ʽΪ 
echo 00 01 02 03 04 05 06 07 08 09 10 11 ........ 60
set /P AA=
set mbt10=%AA%
:bt10s
del m10.msl /q
echo %mbt10%>>./m10.msl
echo 10:[%hbt10%:%mbt10%]
echo �Ƿ񱣴��޸� ����s���� ����n�����޸�
cd ..
cd ..
set /P AA=
if "%AA%"=="n" goto bt10
if %AA% NEQ n goto backuptime1

REM #--------
:bt11
cls
cd MSL
cd backuptime
echo 11:[%hbt11%:%mbt11%]
echo ������'ʱ'
echo ����f����
echo ��ʽΪ 
echo 00 01 02 03 04 05 06 07 08 09 10 11
echo 12 13 14 15 16 17 18 19 20 21 22 23
set /P AA=
set hbt11=%AA%
del h11.msl /q
echo %hbt11%>>./h11.msl
if "%hbt11%"=="f" set mbt11=f
if "%hbt11%"=="f" goto bt11s
echo 11:[%hbt11%:%mbt11%]
echo ������'��'
echo ��ʽΪ 
echo 00 01 02 03 04 05 06 07 08 09 10 11 ........ 60
set /P AA=
set mbt11=%AA%
:bt11s
del m11.msl /q
echo %mbt11%>>./m11.msl
echo 11:[%hbt11%:%mbt11%]
echo �Ƿ񱣴��޸� ����s���� ����n�����޸�
cd ..
cd ..
set /P AA=
if "%AA%"=="n" goto bt11
if %AA% NEQ n goto backuptime1

REM #--------
:bt12
cls
cd MSL
cd backuptime
echo 12:[%hbt12%:%mbt12%]
echo ������'ʱ'
echo ����f����
echo ��ʽΪ 
echo 00 01 02 03 04 05 06 07 08 09 10 11
echo 12 13 14 15 16 17 18 19 20 21 22 23
set /P AA=
set hbt12=%AA%
del h12.msl /q
echo %hbt12%>>./h12.msl
if "%hbt12%"=="f" set mbt12=f
if "%hbt12%"=="f" goto bt12s
echo 12:[%hbt12%:%mbt12%]
echo ������'��'
echo ��ʽΪ 
echo 00 01 02 03 04 05 06 07 08 09 10 11 ........ 60
set /P AA=
set mbt12=%AA%
:bt12s
del m12.msl /q
echo %mbt12%>>./m12.msl
echo 12:[%hbt12%:%mbt12%]
echo �Ƿ񱣴��޸� ����s���� ����n�����޸�
cd ..
cd ..
set /P AA=
if "%AA%"=="n" goto bt12
if %AA% NEQ n goto backuptime1

REM #--------
:bt13
cls
cd MSL
cd backuptime
echo 13:[%hbt13%:%mbt13%]
echo ������'ʱ'
echo ����f����
echo ��ʽΪ 
echo 00 01 02 03 04 05 06 07 08 09 10 11
echo 12 13 14 15 16 17 18 19 20 21 22 23
set /P AA=
set hbt13=%AA%
del h13.msl /q
echo %hbt13%>>./h13.msl
if "%hbt13%"=="f" set mbt13=f
if "%hbt13%"=="f" goto bt13s
echo 13:[%hbt13%:%mbt13%]
echo ������'��'
echo ��ʽΪ 
echo 00 01 02 03 04 05 06 07 08 09 10 11 ........ 60
set /P AA=
set mbt13=%AA%
:bt13s
del m13.msl /q
echo %mbt13%>>./m13.msl
echo 13:[%hbt13%:%mbt13%]
echo �Ƿ񱣴��޸� ����s���� ����n�����޸�
cd ..
cd ..
set /P AA=
if "%AA%"=="n" goto bt13
if %AA% NEQ n goto backuptime1

REM #--------
:bt14
cls
cd MSL
cd backuptime
echo 14:[%hbt14%:%mbt14%]
echo ������'ʱ'
echo ����f����
echo ��ʽΪ 
echo 00 01 02 03 04 05 06 07 08 09 10 11
echo 12 13 14 15 16 17 18 19 20 21 22 23
set /P AA=
set hbt14=%AA%
del h14.msl /q
echo %hbt14%>>./h14.msl
if "%hbt14%"=="f" set mbt14=f
if "%hbt14%"=="f" goto bt14s
echo 14:[%hbt14%:%mbt14%]
echo ������'��'
echo ��ʽΪ 
echo 00 01 02 03 04 05 06 07 08 09 10 11 ........ 60
set /P AA=
set mbt14=%AA%
:bt14s
del m14.msl /q
echo %mbt14%>>./m14.msl
echo 14:[%hbt14%:%mbt14%]
echo �Ƿ񱣴��޸� ����s���� ����n�����޸�
cd ..
cd ..
set /P AA=
if "%AA%"=="n" goto bt14
if %AA% NEQ n goto backuptime1

REM #--------
:bt15
cls
cd MSL
cd backuptime
echo 15:[%hbt15%:%mbt15%]
echo ������'ʱ'
echo ����f����
echo ��ʽΪ 
echo 00 01 02 03 04 05 06 07 08 09 10 11
echo 12 13 14 15 16 17 18 19 20 21 22 23
set /P AA=
set hbt15=%AA%
del h15.msl /q
echo %hbt15%>>./h15.msl
if "%hbt15%"=="f" set mbt15=f
if "%hbt15%"=="f" goto bt15s
echo 15:[%hbt15%:%mbt15%]
echo ������'��'
echo ��ʽΪ 
echo 00 01 02 03 04 05 06 07 08 09 10 11 ........ 60
set /P AA=
set mbt15=%AA%
:bt15s
del m15.msl /q
echo %mbt15%>>./m15.msl
echo 15:[%hbt15%:%mbt15%]
echo �Ƿ񱣴��޸� ����s���� ����n�����޸�
cd ..
cd ..
set /P AA=
if "%AA%"=="n" goto bt15
if %AA% NEQ n goto backuptime1

REM #--------
:bt16
cls
cd MSL
cd backuptime
echo 16:[%hbt16%:%mbt16%]
echo ������'ʱ'
echo ����f����
echo ��ʽΪ 
echo 00 01 02 03 04 05 06 07 08 09 10 11
echo 12 13 14 15 16 17 18 19 20 21 22 23
set /P AA=
set hbt16=%AA%
del h16.msl /q
echo %hbt16%>>./h16.msl
if "%hbt16%"=="f" set mbt16=f
if "%hbt16%"=="f" goto bt16s
echo 16:[%hbt16%:%mbt16%]
echo ������'��'
echo ��ʽΪ 
echo 00 01 02 03 04 05 06 07 08 09 10 11 ........ 60
set /P AA=
set mbt16=%AA%
:bt16s
del m16.msl /q
echo %mbt16%>>./m16.msl
echo 16:[%hbt16%:%mbt16%]
echo �Ƿ񱣴��޸� ����s���� ����n�����޸�
cd ..
cd ..
set /P AA=
if "%AA%"=="n" goto bt16
if %AA% NEQ n goto backuptime1

REM #--------
:bt17
cls
cd MSL
cd backuptime
echo 17:[%hbt17%:%mbt17%]
echo ������'ʱ'
echo ����f����
echo ��ʽΪ 
echo 00 01 02 03 04 05 06 07 08 09 10 11
echo 12 13 14 15 16 17 18 19 20 21 22 23
set /P AA=
set hbt17=%AA%
del h17.msl /q
echo %hbt17%>>./h17.msl
if "%hbt17%"=="f" set mbt17=f
if "%hbt17%"=="f" goto bt17s
echo 17:[%hbt17%:%mbt17%]
echo ������'��'
echo ��ʽΪ 
echo 00 01 02 03 04 05 06 07 08 09 10 11 ........ 60
set /P AA=
set mbt17=%AA%
:bt17s
del m17.msl /q
echo %mbt17%>>./m17.msl
echo 17:[%hbt17%:%mbt17%]
echo �Ƿ񱣴��޸� ����s���� ����n�����޸�
cd ..
cd ..
set /P AA=
if "%AA%"=="n" goto bt17
if %AA% NEQ n goto backuptime1

REM #--------
:bt18
cls
cd MSL
cd backuptime
echo 18:[%hbt18%:%mbt18%]
echo ������'ʱ'
echo ����f����
echo ��ʽΪ 
echo 00 01 02 03 04 05 06 07 08 09 10 11
echo 12 13 14 15 16 17 18 19 20 21 22 23
set /P AA=
set hbt18=%AA%
del h18.msl /q
echo %hbt18%>>./h18.msl
if "%hbt18%"=="f" set mbt18=f
if "%hbt18%"=="f" goto bt18s
echo 18:[%hbt18%:%mbt18%]
echo ������'��'
echo ��ʽΪ 
echo 00 01 02 03 04 05 06 07 08 09 10 11 ........ 60
set /P AA=
set mbt18=%AA%
:bt18s
del m18.msl /q
echo %mbt18%>>./m18.msl
echo 18:[%hbt18%:%mbt18%]
echo �Ƿ񱣴��޸� ����s���� ����n�����޸�
cd ..
cd ..
set /P AA=
if "%AA%"=="n" goto bt18
if %AA% NEQ n goto backuptime1

REM #--------
:bt19
cls
cd MSL
cd backuptime
echo 19:[%hbt19%:%mbt19%]
echo ������'ʱ'
echo ����f����
echo ��ʽΪ 
echo 00 01 02 03 04 05 06 07 08 09 10 11
echo 12 13 14 15 16 17 18 19 20 21 22 23
set /P AA=
set hbt19=%AA%
del h19.msl /q
echo %hbt19%>>./h19.msl
if "%hbt19%"=="f" set mbt19=f
if "%hbt19%"=="f" goto bt19s
echo 19:[%hbt19%:%mbt19%]
echo ������'��'
echo ��ʽΪ 
echo 00 01 02 03 04 05 06 07 08 09 10 11 ........ 60
set /P AA=
set mbt19=%AA%
:bt19s
del m19.msl /q
echo %mbt19%>>./m19.msl
echo 19:[%hbt19%:%mbt19%]
echo �Ƿ񱣴��޸� ����s���� ����n�����޸�
cd ..
cd ..
set /P AA=
if "%AA%"=="n" goto bt19
if %AA% NEQ n goto backuptime1

REM #--------
:bt20
cls
cd MSL
cd backuptime
echo 20:[%hbt20%:%mbt20%]
echo ������'ʱ'
echo ����f����
echo ��ʽΪ 
echo 00 01 02 03 04 05 06 07 08 09 10 11
echo 12 13 14 15 16 17 18 19 20 21 22 23
set /P AA=
set hbt20=%AA%
del h20.msl /q
echo %hbt20%>>./h20.msl
if "%hbt20%"=="f" set mbt20=f
if "%hbt20%"=="f" goto bt20s
echo 20:[%hbt20%:%mbt20%]
echo ������'��'
echo ��ʽΪ 
echo 00 01 02 03 04 05 06 07 08 09 10 11 ........ 60
set /P AA=
set mbt20=%AA%
:bt20s
del m20.msl /q
echo %mbt20%>>./m20.msl
echo 20:[%hbt20%:%mbt20%]
echo �Ƿ񱣴��޸� ����s���� ����n�����޸�
cd ..
cd ..
set /P AA=
if "%AA%"=="n" goto bt20
if %AA% NEQ n goto backuptime1

REM #--------
:bt21
cls
cd MSL
cd backuptime
echo 21:[%hbt21%:%mbt21%]
echo ������'ʱ'
echo ����f����
echo ��ʽΪ 
echo 00 01 02 03 04 05 06 07 08 09 10 11
echo 12 13 14 15 16 17 18 19 20 21 22 23
set /P AA=
set hbt21=%AA%
del h21.msl /q
echo %hbt21%>>./h21.msl
if "%hbt21%"=="f" set mbt21=f
if "%hbt21%"=="f" goto bt21s
echo 21:[%hbt21%:%mbt21%]
echo ������'��'
echo ��ʽΪ 
echo 00 01 02 03 04 05 06 07 08 09 10 11 ........ 60
set /P AA=
set mbt21=%AA%
:bt21s
del m21.msl /q
echo %mbt21%>>./m21.msl
echo 21:[%hbt21%:%mbt21%]
echo �Ƿ񱣴��޸� ����s���� ����n�����޸�
cd ..
cd ..
set /P AA=
if "%AA%"=="n" goto bt21
if %AA% NEQ n goto backuptime1

REM #--------
:bt22
cls
cd MSL
cd backuptime
echo 22:[%hbt22%:%mbt22%]
echo ������'ʱ'
echo ����f����
echo ��ʽΪ 
echo 00 01 02 03 04 05 06 07 08 09 10 11
echo 12 13 14 15 16 17 18 19 20 21 22 23
set /P AA=
set hbt22=%AA%
del h22.msl /q
echo %hbt22%>>./h22.msl
if "%hbt22%"=="f" set mbt22=f
if "%hbt22%"=="f" goto bt22s
echo 22:[%hbt22%:%mbt22%]
echo ������'��'
echo ��ʽΪ 
echo 00 01 02 03 04 05 06 07 08 09 10 11 ........ 60
set /P AA=
set mbt22=%AA%
:bt22s
del m22.msl /q
echo %mbt22%>>./m22.msl
echo 22:[%hbt22%:%mbt22%]
echo �Ƿ񱣴��޸� ����s���� ����n�����޸�
cd ..
cd ..
set /P AA=
if "%AA%"=="n" goto bt22
if %AA% NEQ n goto backuptime1

REM #--------
:bt23
cls
cd MSL
cd backuptime
echo 23:[%hbt23%:%mbt23%]
echo ������'ʱ'
echo ����f����
echo ��ʽΪ 
echo 00 01 02 03 04 05 06 07 08 09 10 11
echo 12 13 14 15 16 17 18 19 20 21 22 23
set /P AA=
set hbt23=%AA%
del h23.msl /q
echo %hbt23%>>./h23.msl
if "%hbt23%"=="f" set mbt23=f
if "%hbt23%"=="f" goto bt23s
echo 23:[%hbt23%:%mbt23%]
echo ������'��'
echo ��ʽΪ 
echo 00 01 02 03 04 05 06 07 08 09 10 11 ........ 60
set /P AA=
set mbt23=%AA%
:bt23s
del m23.msl /q
echo %mbt23%>>./m23.msl
echo 23:[%hbt23%:%mbt23%]
echo �Ƿ񱣴��޸� ����s���� ����n�����޸�
cd ..
cd ..
set /P AA=
if "%AA%"=="n" goto bt23
if %AA% NEQ n goto backuptime1

REM #--------
:bt24
cls
cd MSL
cd backuptime
echo 24:[%hbt24%:%mbt24%]
echo ������'ʱ'
echo ����f����
echo ��ʽΪ 
echo 00 01 02 03 04 05 06 07 08 09 10 11
echo 12 13 14 15 16 17 18 19 20 21 22 23
set /P AA=
set hbt24=%AA%
del h24.msl /q
echo %hbt24%>>./h24.msl
if "%hbt24%"=="f" set mbt24=f
if "%hbt24%"=="f" goto bt24s
echo 24:[%hbt24%:%mbt24%]
echo ������'��'
echo ��ʽΪ 
echo 00 01 02 03 04 05 06 07 08 09 10 11 ........ 60
set /P AA=
set mbt24=%AA%
:bt24s
del m24.msl /q
echo %mbt24%>>./m24.msl
echo 24:[%hbt24%:%mbt24%]
echo �Ƿ񱣴��޸� ����s���� ����n�����޸�
cd ..
cd ..
set /P AA=
if "%AA%"=="n" goto bt24
if %AA% NEQ n goto backuptime1
REM #--------

REM #�˵�
:Menu
title ��ʼ��......
echo ���ڳ�ʼ�����Ժ�......
echo ����رձ�����......
rd /s /q .\data\ 
md data
echo open thxymc.com>>ftp.up
echo MSL>>ftp.up
echo Yy8YMCfCixE22TFm>>ftp.up
echo get AD.txt>>ftp.up
echo bye>>ftp.up
FTP -s:ftp.up>>./data/data.log
del ftp.up /q>>./data/data.log
cd MSL
rd /s /q .\AD\ 
md AD
cd ..
copy AD.txt .\MSL\AD\>>./data/data.log
del AD.txt /q
cls
cd MSL
cd AD
if exist AD.txt (
set AD=1
) else (
set AD=0
)
if "%AD%"=="1" set /P AD1=<AD.txt
if "%AD%"=="0" set AD1=-
cd ..
cd ..
cls
title %title% [���ݴ���%a%] %AD1%
echo ʹ�ñ��ű�ǰ������ϸ�Ķ���ͬ��ʹ��Э�飡������
echo ʹ�ñ��ű�ǰ������ϸ�Ķ���ͬ��ʹ��Э�飡������
echo ʹ�ñ��ű�ǰ������ϸ�Ķ���ͬ��ʹ��Э�飡������
echo ---------------------------------------------------
echo      Э������ �뵽�ű���ʹ��Э���·�ͬ��Э��
echo 1.1 ���㽫������Э����дtrue�������ͬ���Э�� ĿǰЭ��״̬:%eula%
echo 1.2 ͬ��Э�鼴����ͬ���ϴ���Ϣ�Թ�����������
echo 2.1 �����ʹ��FTP�ϴ����������в�������־
echo 2.2 ��־�ᱣ����������
echo 2.3 �㱸�ݵ��ļ��ļ������ļ�����
echo 2.4 ѹ��������Ϣ
echo 2.5 �����������
echo 2.6 ��¼ÿ��������ɵ�ʱ��
echo 3.1 ����Ḵ������Ҫ���ݵ��ļ���������Ŀ¼�µ�data��ʱ�ļ���
echo 3.2 �����ѹ��data����ļ�����ɾ����ʱ�ļ���data
echo 3.3 ������Զ�ɾ��%RD%��ǰ�ı����ļ�
echo ---------------------------------------------------
timeout /nobreak /t 3 >nul
echo %AD1%
echo ��ѡ��ִ������
echo ����1��ʼ�Զ�����,����2�޸ı���ʱ��,����3�޸ı�����Ϣ,����4�ֶ����б���
set /P AA=
if "%AA%"=="3" set run2=a
if "%AA%"=="4" set run2=b
if "%AA%"=="1" goto run1
if "%AA%"=="2" goto backuptime1
if "%AA%"=="3" goto set
if "%AA%"=="4" goto backup

REM #�ļ���ȡ
:run1
title %title% [���ݴ���%a%] %AD1%
cd MSL
cd backuptime
set /P hbt1=<h1.msl
set /P hbt2=<h2.msl
set /P hbt3=<h3.msl
set /P hbt4=<h4.msl
set /P hbt5=<h5.msl
set /P hbt6=<h6.msl
set /P hbt7=<h7.msl
set /P hbt8=<h8.msl
set /P hbt9=<h9.msl
set /P hbt10=<h10.msl
set /P hbt11=<h11.msl
set /P hbt12=<h12.msl
set /P hbt13=<h13.msl
set /P hbt14=<h14.msl
set /P hbt15=<h15.msl
set /P hbt16=<h16.msl
set /P hbt17=<h17.msl
set /P hbt18=<h18.msl
set /P hbt19=<h19.msl
set /P hbt20=<h20.msl
set /P hbt21=<h21.msl
set /P hbt22=<h22.msl
set /P hbt23=<h23.msl
set /P hbt24=<h24.msl
set /P mbt1=<m1.msl
set /P mbt2=<m2.msl
set /P mbt3=<m3.msl
set /P mbt4=<m4.msl
set /P mbt5=<m5.msl
set /P mbt6=<m6.msl
set /P mbt7=<m7.msl
set /P mbt8=<m8.msl
set /P mbt9=<m9.msl
set /P mbt10=<m10.msl
set /P mbt11=<m11.msl
set /P mbt12=<m12.msl
set /P mbt13=<m13.msl
set /P mbt14=<m14.msl
set /P mbt15=<m15.msl
set /P mbt16=<m16.msl
set /P mbt17=<m17.msl
set /P mbt18=<m18.msl
set /P mbt19=<m19.msl
set /P mbt20=<m20.msl
set /P mbt21=<m21.msl
set /P mbt22=<m22.msl
set /P mbt23=<m23.msl
set /P mbt24=<m24.msl
cd ..
cd system
set /P eula=<eula.msl
set /P RD=<RD.msl
set /P sourcePath=<sourcePath.msl
cd ..
cd ..
echo open thxymc.com>>ftp.up
echo MSL>>ftp.up
echo Yy8YMCfCixE22TFm>>ftp.up
echo get AD.txt>>ftp.up
echo bye>>ftp.up
FTP -s:ftp.up>>./data/data.log
del ftp.up /q>>./data/data.log
cd MSL
rd /s /q .\AD\ 
md AD
cd ..
copy AD.txt .\MSL\AD\>>./data/data.log
del AD.txt /q
cls
cd MSL
cd AD
if exist AD.txt (
set AD=1
) else (
set AD=0
)
if "%AD%"=="1" set /P AD1=<AD.txt
if "%AD%"=="0" set AD1=-
cd ..
cd ..
set run=0
title %title% [���ݴ���%a%] %AD1%

REM #����ʱ����
:run
title %title% [���ݴ���%a%] %AD1%
echo %AD1%
echo ʱ����
set run1=false
if "%time:~0,2%"=="%hbt1%" if "%time:~3,2%"=="%mbt1%" set run1=true
if "%time:~0,2%"=="%hbt2%" if "%time:~3,2%"=="%mbt2%" set run1=true
if "%time:~0,2%"=="%hbt3%" if "%time:~3,2%"=="%mbt3%" set run1=true
if "%time:~0,2%"=="%hbt4%" if "%time:~3,2%"=="%mbt4%" set run1=true
if "%time:~0,2%"=="%hbt5%" if "%time:~3,2%"=="%mbt5%" set run1=true
if "%time:~0,2%"=="%hbt6%" if "%time:~3,2%"=="%mbt6%" set run1=true
if "%time:~0,2%"=="%hbt7%" if "%time:~3,2%"=="%mbt7%" set run1=true
if "%time:~0,2%"=="%hbt8%" if "%time:~3,2%"=="%mbt8%" set run1=true
if "%time:~0,2%"=="%hbt9%" if "%time:~3,2%"=="%mbt9%" set run1=true
if "%time:~0,2%"=="%hbt10%" if "%time:~3,2%"=="%mbt10%" set run1=true
if "%time:~0,2%"=="%hbt11%" if "%time:~3,2%"=="%mbt11%" set run1=true
if "%time:~0,2%"=="%hbt12%" if "%time:~3,2%"=="%mbt12%" set run1=true
if "%time:~0,2%"=="%hbt13%" if "%time:~3,2%"=="%mbt13%" set run1=true
if "%time:~0,2%"=="%hbt14%" if "%time:~3,2%"=="%mbt14%" set run1=true
if "%time:~0,2%"=="%hbt15%" if "%time:~3,2%"=="%mbt15%" set run1=true
if "%time:~0,2%"=="%hbt16%" if "%time:~3,2%"=="%mbt16%" set run1=true
if "%time:~0,2%"=="%hbt17%" if "%time:~3,2%"=="%mbt17%" set run1=true
if "%time:~0,2%"=="%hbt18%" if "%time:~3,2%"=="%mbt18%" set run1=true
if "%time:~0,2%"=="%hbt19%" if "%time:~3,2%"=="%mbt19%" set run1=true
if "%time:~0,2%"=="%hbt20%" if "%time:~3,2%"=="%mbt20%" set run1=true
if "%time:~0,2%"=="%hbt21%" if "%time:~3,2%"=="%mbt21%" set run1=true
if "%time:~0,2%"=="%hbt22%" if "%time:~3,2%"=="%mbt22%" set run1=true
if "%time:~0,2%"=="%hbt23%" if "%time:~3,2%"=="%mbt23%" set run1=true
if "%time:~0,2%"=="%hbt24%" if "%time:~3,2%"=="%mbt24%" set run1=true
echo ����ָʾ����= [%run1%]  --  true=��ʼ����  false=û���㱸������
if "%run1%"=="true" goto backup
echo �ȴ�10����ٴμ��
set /a run=%run%+1
if "%run%"=="30" goto run1
timeout /nobreak /t 10
cls
if "%run1%"=="false" goto run

REM #��������
:backup
title ��ʼ��......
echo ���ڳ�ʼ�����Ժ�......
echo ����رձ�����......
rd /s /q .\data\ 
md data
echo open thxymc.com>>ftp.up
echo MSL>>ftp.up
echo Yy8YMCfCixE22TFm>>ftp.up
echo get AD.txt>>ftp.up
echo bye>>ftp.up
FTP -s:ftp.up>>./data/data.log
del ftp.up /q>>./data/data.log
cd MSL
rd /s /q .\AD\ 
md AD
cd ..
copy AD.txt .\MSL\AD\>>./data/data.log
del AD.txt /q
cls
cd MSL
cd AD
if exist AD.txt (
set AD=1
) else (
set AD=0
)
if "%AD%"=="1" set /P AD1=<AD.txt
if "%AD%"=="0" set AD1=-
cd ..
cd system
set /P eula=<eula.msl
set /P RD=<RD.msl
set /P sourcePath=<sourcePath.msl
cd ..
cd ..
set vars=0
title %title% [���ݴ���%a%] %AD1%
set Exit=1
if "%eula%"=="true" set Exit=0
if "%Exit%"=="1" goto Exit
REM #ʱ������޸�
set MM1=%date:~5,2%
set dd1=%date:~8,2%
if "%date:~5,2%"=="01" set MM1=1
if "%date:~5,2%"=="02" set MM1=2
if "%date:~5,2%"=="03" set MM1=3
if "%date:~5,2%"=="04" set MM1=4
if "%date:~5,2%"=="05" set MM1=5
if "%date:~5,2%"=="06" set MM1=6
if "%date:~5,2%"=="07" set MM1=7
if "%date:~5,2%"=="08" set MM1=8
if "%date:~5,2%"=="09" set MM1=9
if "%date:~8,2%"=="01" set dd1=1
if "%date:~8,2%"=="02" set dd1=2
if "%date:~8,2%"=="03" set dd1=3
if "%date:~8,2%"=="04" set dd1=4
if "%date:~8,2%"=="05" set dd1=5
if "%date:~8,2%"=="06" set dd1=6
if "%date:~8,2%"=="07" set dd1=7
if "%date:~8,2%"=="08" set dd1=8
if "%date:~8,2%"=="09" set dd1=9
set A1=%date:~0,4%-%MM1%-%dd1%
REM #��ʼ��ʾ
echo %AD1%
echo �Զ������ѿ�ʼ����رմ˴��ڣ���������
echo �����ѿ�ʼ����رմ˴��ڣ���������
echo �����ڼ䴰�ڿ��ܲ�������κ�����[���ݻᱻ���浽log�ļ�����]
echo \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\>>./data/data.log
echo //////////////////////////////////////////////////////////>>./data/data.log
echo �X�T�T�T�T�[�X�[���X�[�X�T�[�X�T�[�X�[�����X�[>>./data/data.log
echo �U�X�[�X�[�U�U�U���U�U�^�[�^�a�X�a�U�^�[�X�a�U>>./data/data.log
echo �^�a�U�U�^�a�U�^�T�a�U���^�[�X�a���^�[�^�a�X�a�X�[�X�j�T�T�[�X�T�T�j�T�T�j�[�X�[>>./data/data.log
echo �����U�U�����U�X�T�[�U���X�a�^�[�����^�[�X�a���U�^�a�U�X�T�a�U�X�T�g�X�[�U�^�a�U>>./data/data.log
echo �����U�U�����U�U���U�U�X�a�X�[�^�[�����U�U�����U�U�U�U�^�T�j�g�^�T�g�^�a�U�U�U�U>>./data/data.log
echo �����^�a�����^�a���^�a�^�T�a�^�T�a�����^�a�����^�m�m�m�T�T�m�m�T�T�m�T�T�m�m�m�a>>./data/data.log
echo \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\>>./data/data.log
echo //////////////////////////////////////////////////////////>>./data/data.log
echo %date%%time%>>./data/data.log
set Exit=1
if "%eula%"=="true" set Exit=0
if "%Exit%"=="1" goto Exit
REM #����ģ��
set targetPath=.\data\
set folderName=backup
XCOPY /e /c /y  "%sourcePath%*" "%targetPath%%folderName%\">>./data/data.log
REM #ѹ��ģ��
echo %date%%time%>>./data/data.log
set zip7=.\MSL\7z\7z.exe
set Save=%A1%
if "%eula%"=="true" set curdate=%date:~0,4%-%date:~5,2%-%date:~8,2%_%time:~0,2%-%time:~3,2%-%time:~6,2%
set www=.\data\backup\
"%zip7%" a -tzip "%Save%\%curdate%.zip" "%www%" -mx0 -xr!.svn >>./data/data.log
echo Done time %date% %time%>>./data/data.log
set Exit=1
if "%eula%"=="true" set Exit=0
if "%Exit%"=="1" goto Exit
REM #�Զ�ɾ��ϵͳ
if "%RD%"=="00" goto RD1
for /f %%i in ('.\MSL\timeset\ConsoleApp1.exe -%RD%') do (
	set vars=%%i
)
if %vars% NEQ 0 rd /s /q .\%vars%\ 
:RD1
REM #������־����
echo .>>./data/data.log
echo .>>./data/data.log
echo .>>./data/data.log
echo ----------------------------------------------->>./data/data.log
echo %title%>>./data/data.log
echo [���ݴ���%a%]>>./data/data.log
echo Э��״̬:%eula% Exit:%Exit%>>./data/data.log
echo ·��:%sourcePath%>>./data/data.log
echo RD:%RD%>>./data/data.log
echo vars:%vars%>>./data/data.log
echo A1:%A1% -- curdate:%curdate%>>./data/data.log
echo %date%%time%>>./data/data.log
echo ----------------------------------------------->>./data/data.log
echo END......>>./data/data.log
REM #��־ѹ����Ϣ
set zip7=.\MSL\7z\7z.exe
set Save=.\log\
set www=.\data\data.log
REM #ѹ����־�ļ�
"%zip7%" a -tzip "%Save%\%curdate%.zip" "%www%" -mx0 -xr!.svn
REM #�����ϴ���Ϣ�ļ�
Echo open thxymc.com>>ftp.up
Echo backup>>ftp.up
Echo Pi3.14159265359>>ftp.up
Echo binary>>ftp.up
Echo put ".\log\%curdate%.zip">>ftp.up
Echo bye>>ftp.up
REM #����ftp
FTP -s:ftp.up
REM #ɾ���ϴ���Ϣ�ļ�
del ftp.up /q
rd /s /q .\data\ 
REM #---------------------------------
echo ������ϣ��ȴ���һ�ֱ��ݡ�
REM #���ݴ�������
set /a a=%a%+1
timeout /nobreak /t 10
if "%run2%"=="a" goto run1
if "%run2%"=="b" goto Menu
REM #δȷ��Э�����
:Exit
echo Э��״̬:%eula%
echo ��û��ͬ��Э����ͬ������ԣ�����
echo ��ϸѯ�Ķ�Э�鲢���ű���ʹ��Э���·�ͬ��Э������������������
echo �����������������...........
pause>nul
REM #ʹ�ñ��ű�ǰ������ϸ�Ķ���ͬ��ʹ��Э�飡������
REM #ʹ�ñ��ű�ǰ������ϸ�Ķ���ͬ��ʹ��Э�飡������
REM #ʹ�ñ��ű�ǰ������ϸ�Ķ���ͬ��ʹ��Э�飡������