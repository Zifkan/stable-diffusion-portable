@echo off
del README.md
echo Unpacking Git and Python... & mkdir tmp & start /wait git_python.part01.exe & del git_python.part01.exe & del git_python.part*.rar

:: Проверяем, существует ли папка .git, и удаляем её, если она есть
if exist .git (
    echo Deleting .git folder...
    rmdir /s /q .git
)

set path=git\cmd
git init .
git remote add origin https://github.com/Zifkan/stable-diffusion-webui.git
git pull origin master

del webui-user.bat
ren webui-user1.bat webui-user.bat

del webui-user-first-run.cmd & webui-user.bat
