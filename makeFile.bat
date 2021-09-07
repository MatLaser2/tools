@echo off
  
set /p filename="ファイル名を入力："
set /p extension="拡張子を入力："
set /p number="ファイル数を入力："
  
setlocal enabledelayedexpansion
  
for /l %%i in (1,1,%number%) do (
  set num=0%%i
  set num=!num:~-2,2!
  type nul > %filename%!num!.!extension!
)
  
endlocal