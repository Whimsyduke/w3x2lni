@echo off
if exist log.txt (del log.txt)
..\luamake\luamake >> log.txt
..\luamake\luamake lua make\make.lua ci >> log.txt
@echo on
echo 完成