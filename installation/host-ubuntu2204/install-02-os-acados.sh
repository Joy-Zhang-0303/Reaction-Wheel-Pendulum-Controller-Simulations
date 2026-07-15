cd ~/Documents/
git clone https://github.com/acados/acados.git
cd acados
git submodule update --recursive --init
mkdir -p build
cd build
cmake -DACADOS_WITH_QPOASES=ON ..
# add more optional arguments e.g. -DACADOS_WITH_DAQP=ON, a list of CMake options is provided below
make install -j4

# Install python interface into system, if install into virtual, run it in a virtual env
pip install -e ~/Documents/acados/interfaces/acados_template

echo 'export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:"~/Documents/acados/lib"' >> ~/.bashrc
echo 'export ACADOS_SOURCE_DIR="~/Documents/acados"' >> ~/.bashrc
