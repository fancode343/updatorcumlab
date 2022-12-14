@ECHO OFF
echo CLEANING FILES

rmdir /s /q assets 
del index.html
del internetcheck.html
del fake-youtube.html
del Video\video1.html
del Video\video2.html

echo DOWNLOADING FILES
mkdir file1
cd file1
curl https://raw.githubusercontent.com/fancode343/updatorcumlab/main/Desktop/Limited-Internet.vbs -O
curl https://raw.githubusercontent.com/fancode343/updatorcumlab/main/Desktop/Update-Full.vbs -O
cd ..\
curl https://raw.githubusercontent.com/fancode343/updatorcumlab/main/FullUPDATE.cmd -O
curl https://raw.githubusercontent.com/fancode343/updatorcumlab/main/QuickUPDATE.cmd -O
powershell -Command "wget https://github.com/fancode343/updatorcumlab/archive/refs/heads/zip1.zip -O LMNET.zip"
echo UNZIPING FILES
tar -xf LMNET.zip

echo Replacing some Files
cd Video
curl https://raw.githubusercontent.com/fancode343/updatorcumlab/offlinefiles/Video/video1.html -O
curl https://raw.githubusercontent.com/fancode343/updatorcumlab/offlinefiles/Video/video2.html -O
cd ../
cd data\music
del music1.html
curl https://raw.githubusercontent.com/fancode343/updatorcumlab/offlinefiles/data/music/music1.html -O
cd ../../

echo MOVING FILES
@ECHO OFF
mkdir C:\Users\"%USERNAME%"\Desktop\Limited-Internet
copy file1 C:\Users\"%USERNAME%"\Desktop\Limited-Internet
mkdir assets
xcopy updatorcumlab-zip1\assets assets
copy updatorcumlab-zip1\fake-youtube.html
copy updatorcumlab-zip1\internetcheck.html
copy updatorcumlab-zip1\index.html
echo CLEANING
rmdir /s /q updatorcumlab-zip1
del LMNET.zip
del README.md
del 404.html
rmdir /s /q file1
del quickupdator.cmd
