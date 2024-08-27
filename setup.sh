mkdir -p ~/miniconda3
# wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-aarch64.sh -O ~/miniconda3/miniconda.sh
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-`arch`.sh -O ~/miniconda3/miniconda.sh
bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
rm -rf ~/miniconda3/miniconda.sh
~/miniconda3/bin/conda init bash
bash ./python_env.sh
sudo apt update
sudo apt install -y docker.io docker-compose-v2  firefox xserver-xorg-video-dummy xdg-utils

sudo usermod -aG docker $USER
#re-login
docker compose up -d

git config --global user.email "benedikt@kantz.at"
git config --global user.name "Benedikt Kantz"

sudo X -config instagraph/dummy_xorg.conf 2> ~/xorg.log &