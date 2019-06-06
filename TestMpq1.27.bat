pushd "script"
if exist ..\LogMpq_1.27.txt (del ..\LogMpq_1.27.txt)
..\bin\w3x2lni-lua.exe -e "_W2L_MODE='CLI'" -E "C:\Users\hwu.c\Documents\Code\OtherSource\actboy168\w3x2lni\script\main.lua" mpq "D:\Blizzard\Warcraft III Frozen Throne 1.27a publish">>..\LogMpq_1.27.txt
