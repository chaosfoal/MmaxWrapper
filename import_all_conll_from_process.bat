@echo off
for %%F in (process\*.*) do (
   java -Xmx1G -Dfile.encoding=UTF-8 -cp "dist\MmaxWrapper.jar;lib\*" MmaxWrapper %* -project %%~nF -conll %%F -mmaxPath data\
)
pause
