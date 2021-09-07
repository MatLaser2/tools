@echo off
  
set /p filename="input file name : "
set /p extension="input extension : "
set /p start_number="input start number : "
set /p end_number="input end number : "
  
setlocal enabledelayedexpansion
  
for /l %%i in (%start_number%,1,%end_number%) do (
  set num=00%%i
  set num=!num:~-3,3!
  type nul > %filename%!num!.!extension!
)
  
endlocal