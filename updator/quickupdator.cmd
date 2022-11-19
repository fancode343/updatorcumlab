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
powershell -Command "wget https://github.com/fancode343/updatorcumlab/releases/download/1.0/LMNET.zip -O LMNET.zip"
echo UNZIPING FILES
tar -xf LMNET.zip
echo moving files
mkdir C:\Users\%USERNAME%\Desktop\Limited-Internet
copy file1 C:\Users\%USERNAME%\Desktop\Limited-Internet
del LMNET.zip
rmdir /s /q file1
del quickupdator.cmd
