# Error compiling solvers.i Not sure what the error is.
#
#subprocess.CalledProcessError: Command '/opt/software-current/2023.06/x86_64/generic/software/SWIG/4.1.1-GCCcore-12.3.0/bin/swig -Wall -c++ -python -fastproxy -olddefs -keyword -I/mnt/ffs24/home/colbrydi/ICER/easybuild_local/PyMFEM/packages/lib/python3.11/site-packages/mfem/external/ser/include -I/mnt/ffs24/home/colbrydi/ICER/easybuild_local/PyMFEM/packages/lib/python3.11/site-packages/mfem/external/ser/include/mfem -I/mnt/ffs24/home/colbrydi/ICER/easybuild_local/PyMFEM/external/mfem -I/opt/software-current/2023.06/x86_64/generic/software/SuiteSparse/5.13.0-foss-2023a-METIS-5.1.0/include/suitesparse solvers.i' returned non-zero exit status 1.

rm -rf packages

mkdir -p ./packages

rm -rf PyMFEM
git clone https://github.com/mfem/PyMFEM.git
cd PyMFEM
git checkout v4.5.0.1  
#python setup.py clean --all

module purge
source ../../easybuild_local/eb_local_use.sh 
module load SuiteSparse/7.1.0-foss-2023a
#SuiteSparse/5.13.0-foss-2023a-METIS-5.1.0
module load Python
module load MFEM/4.5-foss-2023a
module load METIS
module load Hypre
module load mpi4py
module load OpenBLAS
module load OpenMPI
module load SWIG
module load CMake
module load Boost.Python-NumPy

                        #--skip-ext \
                        #--mfem-branch=v4.5
python setup.py install --prefix=../packages/ \
                        --with-parallel \
                        --suitesparse-prefix=$EBROOTSUITESPARSE \
                        --blas-libraries=$EBROOTOPENBLAS/lib/ \
                        --hypre-prefix=$EBROOTHYPRE \
                        --metis-prefix=$EBROOTMETIS \
                        --mfem-source=$EBROOTMFEM/mfem-src/ \
			--mfem-prefix=$EBROOTMFEM \


#python setup.py install \
#    --with-parallel \
#    --hypre-prefix=/path/to/hypre \
#    --metis-prefix=/path/to/metis

