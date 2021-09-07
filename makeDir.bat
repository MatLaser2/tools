@echo off
  
set /p foldername="input directory name : "
set /p start_number="input start number : "
set /p end_number="input end number : "
  
setlocal enabledelayedexpansion
  
for /l %%i in (%start_number%,1,%end_number%) do (
  set num=00%%i
  set num=!num:~-3,3!
  mkdir %foldername%!num!
)
  
endlocal