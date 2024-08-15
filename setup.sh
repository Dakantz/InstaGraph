mkdir -p ~/miniconda3
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
rm -rf ~/miniconda3/miniconda.sh
~/miniconda3/bin/conda init bash
# restart bash
conda create -n grapher python=3.11
conda activate grapher
pip install beautifulsoup4 jupyter
sudo apt update
sudo apt install docker.io docker-compose-v2
sudo usermod -aG docker $USER
#re-login