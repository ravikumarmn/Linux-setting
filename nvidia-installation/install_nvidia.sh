#if the downloaded file is in Downloads
cd ~/Downloads/

echo "What is the name of the file you want to run? from this list"
ls
read NAME

sudo bash $NAME
