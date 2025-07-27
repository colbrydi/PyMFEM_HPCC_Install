rm -rf PyMFEM
git clone https://github.com/mfem/PyMFEM.git
cd PyMFEM
#python setup.py clean --all

module purge
module load Python
module load mpi4py
module load OpenBLAS
module load OpenMPI
module load SuiteSparse
module load SWIG
module load CMake
module load Boost.Python-NumPy

mkdir -p ./packages

                        #--with-gslib \
python setup.py install --prefix=./packages/ \
                        --with-parallel \
                        --verbose \
                        --mfem-branch=master 
#--mfem-branch=master  

