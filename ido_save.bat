@echo off
REM KeiTokoyo / X: @Tky_kei
echo SETUP PROGRESS...

REM Default Settings
REM - defaultregistrypath -> Do not touch (because the registry location is independent of the basic environment)
REM - defaultsavepath -> Specify the directory where you want to save the file (enclose the file in double quotation marks if it contains spaces)
set defaultregistrypath="HKEY_CURRENT_USER\SOFTWARE\Rewindapp\Initial Drift"
set defaultsavepath=<YOUR SAVE DIRECTORY PATH>
set dateymd=%date:/=%
set timehmsTemp=%time: =0%
set timehms=%timehmsTemp:~0,2%%timehmsTemp:~3,2%%timehmsTemp:~6,2%
set file=IDO_%dateymd%_%timehms%.reg

REM Registry Copy
echo REGISTRY COPY...
REG EXPORT %defaultregistrypath% %defaultsavepath%\%file%

echo PROCESS END...
pause