help([==[
Description
===========
Local computational methods to improve the interpretability and analysis of cryo-EM maps.

In this work, we propose 1) approaches to enhance high-resolution features of cryo-EM maps, while preventing map distortions and 2) methods to obtain local B-factors and electron density occupancy maps. These algorithms have as common link the use of the spiral phase transformation and are called LocSpiral, LocBSharpen, LocBFactor and LocOccupancy. Currently the code runs in Matlab while a Python package is under development.

More information
================
 - Homepage: https://github.com/1aviervargas/LocSpiral-LocBSharpen-LocBFactor-LocOccupancy/
]==])

whatis([==[
Description
===========
Local computational methods to improve the interpretability and analysis of cryo-EM maps.

In this work, we propose 1) approaches to enhance high-resolution features of cryo-EM maps, while preventing map distortions and 2) methods to obtain local B-factors and electron density occupancy maps. These algorithms have as common link the use of the spiral phase transformation and are called LocSpiral, LocBSharpen, LocBFactor and LocOccupancy. Currently the code runs in Matlab while a Python package is under development.

More information
================
 - Homepage: https://github.com/1aviervargas/LocSpiral-LocBSharpen-LocBFactor-LocOccupancy/
]==])

local root = "/scicore/home/engel0006/GROUP/pool-engel/soft/locspiral/"

-- depends_on("MATLAB")
-- load("IMOD")

prepend_path("MATLABPATH", pathJoin(root, "LocSpiral-LocBSharpen-LocBFactor-LocOccupancy/Code"))
prepend_path("MATLABPATH", pathJoin(root, "scripts"))
prepend_path("PATH", pathJoin(root, "scripts"))
