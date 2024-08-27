mkdir -p ~/miniconda3
# wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-aarch64.sh -O ~/miniconda3/miniconda.sh
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-`arch`.sh -O ~/miniconda3/miniconda.sh
bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
rm -rf ~/miniconda3/miniconda.sh
~/miniconda3/bin/conda init bash
# restart bash
conda create -n -y grapher python=3.11
conda activate grapher
pip install beautifulsoup4 jupyter python-arango selenium
sudo apt update
sudo apt install -y docker.io docker-compose-v2  firefox
sudo usermod -aG docker $USER
#re-login
docker compose up -d

git config --global user.email "benedikt@kantz.at"
git config --global user.name "Benedikt Kantz"