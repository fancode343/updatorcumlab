echo CLEANING FILES
rmdir /s /q assets 
curl https://raw.githubusercontent.com/fancode343/updatorcumlab/main/deletefile.cmd -O
deletefile.cmd
echo DOWNLOADING FILES
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
echo moving files
mkdir C:\Users\"%USERNAME%"\Desktop\Limited-Internet
copy file1 C:\Users\"%USERNAME%"\Desktop\Limited-Internet
copy updatorcumlab-zip1 C:\LMNET
rmdir /s /q updatorcumlab-zip1
del LMNET.zip
del Video.zip
del README.md
rmdir /s /q file1
del fullupdator.cmd
