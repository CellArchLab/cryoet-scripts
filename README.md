# CellArchLab cryoET-scripts
**Miscellaneous scripts for processing cryo-ET data**

Currently the following scritps are available:

* `cryocare/cryocare_pipeline`
  - Dependencies:
    - [cryoCARE_pip](https://github.com/juglab/cryoCARE_pip)
    - [IMOD](https://bio3d.colorado.edu/imod/)
* `isonet/isonet_pipeline`
  - Dependencies:
    - [IsoNet](https://github.com/IsoNet-cryoET/IsoNet)
* `locspiral/locspiral_cli`
  - Dependencies:
    - [LocSpiral-LocBSharpen-LocBFactor-LocOccupancy](https://github.com/1aviervargas/LocSpiral-LocBSharpen-LocBFactor-LocOccupancy/)
    - [MATLAB](https://ch.mathworks.com/products/matlab.html) 

These scripts offer a streamlined way of running the entire pipelines of cryo-CARE and IsoNet each with a single command line. By default the jobs are submitted to a computing cluster managed by SLURM, but optionally they can also be run locally.

## Running the scripts ##
Type `<scriptname> --help` to see all the options available and their default values. For example:
```
isonet_pipeline --help
```
will show you how to run the `isonet_pipeline` script.

## Important ##
You have to modify the lines in the scripts that start with `module load` to reflect how the programs are loaded in your cluster or computing environment. This could be simply modifying the `PATH` environment variable, sourcing another script, or loading a `conda` environment, for example. If the programs are already loaded in your environment you could simply delete or comment out these lines. The exact modifications required will depend on where you want to run the scripts.

Please consult with your local sysadmin or computational expert as needed. We cannot provide support for other computational environments.
