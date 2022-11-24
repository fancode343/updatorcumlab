@ECHO OFF
echo CLEANING FILES

rmdir /s /q assets
rmdir /s /q Video
rmdir /s /q data
del index.html
del internetcheck.html
del fake-youtube.html
echo DOWNLOADING FILES
curl https://raw.githubusercontent.com/fancode343/updatorcumlab/main/FullUPDATE.cmd -O
curl https://raw.githubusercontent.com/fancode343/updatorcumlab/main/QuickUPDATE.cmd -O
mkdir file1
cd file1
curl https://raw.githubusercontent.com/fancode343/updatorcumlab/main/Desktop/Limited-Internet.vbs -O
curl https://raw.githubusercontent.com/fancode343/updatorcumlab/main/Desktop/Update-Full.vbs -O
cd ..\
powershell -Command "wget https://github.com/fancode343/updatorcumlab/archive/refs/heads/zip1.zip -O LMNET.zip"
echo UNZIPING FILES
tar -xf LMNET.zip

echo MOVING FILES
@ECHO OFF
mkdir C:\Users\"%USERNAME%"\Desktop\Limited-Internet
copy file1 C:\Users\"%USERNAME%"\Desktop\Limited-Internet
xcopy updatorcumlab-zip1 /e

echo FULL UPDATE
powershell -Command "wget https://github.com/fancode343/updatorcumlab/releases/download/1.0/Video.zip -O Video.zip"
tar -xf Video.zip
cd data\music
powershell -Command "wget https://github.com/fancode343/updatorcumlab/archive/refs/heads/fullupdate.zip -O fullupdate.zip"
echo UNZIPING FILES
tar -xf updatorcumlab-fullupdate.zip
echo continue FULLUPDATE
copy updatorcumlab-fullupdate\music
rmdir /s /q updatorcumlab-fullupdate
del index.html
del README.md
cd ../../


echo Replacing some Files
cd data\music
del music1.html
curl https://raw.githubusercontent.com/fancode343/updatorcumlab/offlinefiles/data/music/music1.html -O
cd ../../

echo CLEANING
rmdir /s /q updatorcumlab-zip1
del LMNET.zip
del Video.zip
del README.md
del 404.html
rmdir /s /q file1
del fullupdator.cmd
