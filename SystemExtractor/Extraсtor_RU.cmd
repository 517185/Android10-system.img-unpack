@echo off
title SYSTEM.NEW.DAT Extractor v1.2 - 4pda.ru + forum.xda-developers.com
cd /d "%~dp0"

:home
chcp 866
cls
echo.
echo ############################################################################
echo # �ᮡ�� �������୮���:                                                    #
echo # "Alexey711"    - http://4pda.ru/forum/index.php?showuser=2220650         #
echo # "BrateloSlava" - http://4pda.ru/forum/index.php?showuser=2174693         #
echo # "xpirt"        - http://forum.xda-developers.com/member.php?u=5132229    #
echo ############################################################################
echo.
echo ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo + ��। ��砫�� ࠡ��� ᪮����� "system.transfer.list" � system.new.dat" +
echo + � ����� "place_for_system.new.dat_system.transfer.list_here"             +
echo ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo.
echo �롥�� ������:
echo ================
echo.
echo 1) ��ᯠ������ "system.new.dat".
echo 2) ��室.
echo.
set /p web=������� �롮� ��ਠ��:
if "%web%"=="1" goto _imgextractor
if "%web%"=="2" goto bye
goto home

:_imgextractor
echo.
echo �������� ��������, ���� �८�ࠧ������ � "system.new.img"...
echo.
bin\sdat2img place_for_system.new.dat_system.transfer.list_here\system.transfer.list place_for_system.new.dat_system.transfer.list_here\system.new.dat extract_file_here\system.new.img
echo.
echo �ந�室�� �ᯠ����� "system.new.img"...
bin\Imgextractor.exe extract_file_here\system.new.img -i
del extract_file_here\system.new.img 
echo ��⮢�. ��३��� � ����� "extract_file_here"
pause
goto home

:bye
exit