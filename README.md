# PyMFEM_HPCC_Install
Tools to install PyMFEM in my home directory on the MSU HPCC:

## Step 1: Install pymfem using the following pip command

```
pip install --user mfem
pip install --user matplotlib
```

If that dosn't work you can try this install script:
```
source ./localinstall.sh
```

## Testing

Upon successfull install you can test if PyMFEM is working using the folloiwng commands:

```
python
import mfem
```

## Testing on Jupyter

Now we will test using jupyter. Go to http://ondemand.hpcc.msu.edu then select "Interactive Apps" --> "Jupyter"
 
Use these settings:
* Number of hours: 4
* Number of cores: 2
* Amount of memory: 20
* Jupyter location: Default
* Working Directory: /mnt/home/colbrydi. <-- Change to yours
 
Then hit Launch
 
Open '''ex_Posisson_Solver_A1.ipynb''' and run all the cells.

Do you see the sparty logo?  If so, we had a successfull install.