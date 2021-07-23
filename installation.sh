#one prerequisite library
git clone https://github.com/eddelbuettel/mkl4deb.git 
cd mkl4deb

sh script.sh

#installation of kaldi
git clone https://github.com/pykaldi/pykaldi.git
cd pykaldi

sudo apt-get install autoconf automake cmake curl g++ git graphviz libatlas3-base libtool make pkg-config subversion unzip wget zlib1g-dev
#for mac - > brew install automake cmake git graphviz libtool pkg-config wget

pip install --upgrade pip
pip install --upgrade setuptools
pip install numpy pyparsing
pip install ninja  # not required but strongly recommended

git clone -b pykaldi https://github.com/pykaldi/clif

git clone -b pykaldi https://github.com/pykaldi/kaldi

sudo apt install sox

cd tools
./check_dependencies.sh  # checks if system dependencies are installed
./install_protobuf.sh    # installs both the C++ library and the Python package
./install_clif.sh        # installs both the C++ library and the Python package
./install_kaldi.sh       # installs the C++ library
cd ..

python setup.py install
python setup.py test

