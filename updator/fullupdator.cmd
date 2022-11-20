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
powershell -Command "wget https://github.com/fancode343/updatorcumlab/releases/download/1.0/Video.zip -O Video.zip"
echo UNZIPING FILES
tar -xf LMNET.zip
tar -xf Video.zip
echo MOVING FILES
@ECHO OFF
mkdir C:\Users\"%USERNAME%"\Desktop\Limited-Internet
copy file1 C:\Users\"%USERNAME%"\Desktop\Limited-Internet
xcopy updatorcumlab-zip1 /e
echo CLEANING
rmdir /s /q updatorcumlab-zip1
del LMNET.zip
del Video.zip
del README.md
rmdir /s /q file1
del fullupdator.cmd
