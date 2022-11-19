echo CLEANING FILES
rmdir /s /q assets 
rmdir /s /q file1
del LMNET.zip
del Video.zip
del index.html
del limitedinternet.vbs
del internetcheck.html
del fake-youtube.html
echo DOWNLOADING FILES
mkdir file1
cd file1
curl https://raw.githubusercontent.com/fancode343/updatorcumlab/main/Desktop/limitedinternet.vbs -O
curl https://raw.githubusercontent.com/fancode343/updatorcumlab/main/Desktop/LMNET-FULLUPDATE.vbs -O
cd ..\
powershell -Command "wget https://github.com/fancode343/updatorcumlab/releases/download/1.0/LMNET.zip -O LMNET.zip"
powershell -Command "wget https://github.com/fancode343/updatorcumlab/releases/download/1.0/Video.zip -O Video.zip"
echo UNZIPING FILES
tar -xf LMNET.zip
tar -xf Video.zip
echo moving files
copy file1 C:\Users\%USERNAME%\Desktop
del LMNET.zip
del Video.zip
