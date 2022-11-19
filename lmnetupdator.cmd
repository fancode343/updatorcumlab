echo DOWNLOADING FILES
mkdir file1
cd file1
curl https://raw.githubusercontent.com/fancode343/updatorcumlab/main/Desktop/limitedinternet.vbs -O
cd ..\
powershell -Command "wget https://github.com/fancode343/updatorcumlab/releases/download/1.0/LMNET.zip -O LMNET.zip"

echo UNZIPING FILES
tar -xf LMNET.zip

echo moving files
copy file1 C:\Users\%USERNAME%\Desktop
