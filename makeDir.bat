@echo off
  
set /p foldername="フォルダ名を入力："
set /p number="フォルダ数を入力："
  
setlocal enabledelayedexpansion
  
for /l %%i in (1,1,%number%) do (
  set num=0%%i
  set num=!num:~-2,2!
  mkdir %foldername%!num!
)
  
endlocal