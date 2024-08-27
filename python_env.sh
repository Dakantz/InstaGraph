
# restart bash
conda create -n grapher python=3.11 -y
conda activate grapher
pip install beautifulsoup4 jupyter python-arango selenium selenium-stealth playwright-stealth playwright
playwright install
playwright install-deps