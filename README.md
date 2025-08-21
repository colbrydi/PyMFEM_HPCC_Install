# PyMFEM_HPCC_Install
Tools to install PyMFEM in my home directory on the MSU HPCC

To install in the ~/.local directory use the following script
```source ./localinstall.sh```

To activate the install run the following:
```source ./setmodules.sh```

To clean up everything and start over run the following:
```source ./clean.sh```

## Testing

Upon successfull install you can test if PyMFEM is working using the folloiwng commands:

```python
import mfem```

Now we will test using jupyter. Go to http://ondemand.hpcc.msu.edu then select "Interactive Apps" --> "Jupyter"
 
Use these settings:
* Number of hours: 4
* Number of cores: 2
* Amount of memory: 20
* Jupyter location: Default
* Working Directory: /mnt/home/colbrydi. <-- Change to yours
 
Then hit Launch
 
