@ECHO OFF
SET 7Z=..\7za.exe

IF EXIST pdbs\ (
    RMDIR /S /Q .\pdbs
)

MD pdbs\signed

for %%i in (symbols\*) do (
    REM echo %%i
    echo %%i | find "Signed" 1>NUL && (
        REM echo HAZ Signed: %%i
        ..\7za.exe e "%%i" -opdbs\signed *.pdb -r -y
    ) || (
        REM echo NOT Signed: %%i    
        ..\7za.exe e "%%i" -opdbs\ *.pdb -r -y
    )
)

DEL all-pdbs.zip
PUSHD pdbs
..\..\7za.exe a ..\all-pdbs.zip *
POPD

RMDIR /S /Q .\pdbs
