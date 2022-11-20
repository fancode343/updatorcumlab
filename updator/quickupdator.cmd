echo CLEANING FILES
rmdir /s /q assets 
del LMNET.zip
del index.html
del internetcheck.html
del fake-youtube.html
echo DOWNLOADING FILES
mkdir file1
cd file1
curl https://raw.githubusercontent.com/fancode343/updatorcumlab/main/Desktop/Limited-Internet.vbs -O
curl https://raw.githubusercontent.com/fancode343/updatorcumlab/main/Desktop/Update-Full.vbs -O
cd ..\
powershell -Command "wget https://github.com/fancode343/updatorcumlab/archive/refs/tags/1.1.zip -O LMNET.zip"
echo UNZIPING FILES
tar -xf LMNET.zip
echo moving files
mkdir C:\Users\"%USERNAME%"\Desktop\Limited-Internet
copy file1 C:\Users\"%USERNAME%"\Desktop\Limited-Internet
copy updatorcumlab1.1 C:\LMNET
rmdir /s /q updatorcumlab1.1
del LMNET.zip
del README.md
rmdir /s /q file1
del quickupdator.cmd
