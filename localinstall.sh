rm -rf PyMFEM
git clone https://github.com/mfem/PyMFEM.git
cd PyMFEM
git checkout v4.5.0.1  
#python setup.py clean --all

module purge
source ../easybuild_local/eb_local_use.sh
module load Python
module load mpi4py
module load OpenBLAS
module load OpenMPI
module load SuiteSparse
module load SWIG
module load CMake
module load Boost.Python-NumPy

                        #--with-strumpack \
python setup.py install --prefix=user \
                        --with-parallel \
                        --verbose \
                        --mfem-branch=v4.5

#--mfem-branch=master  

