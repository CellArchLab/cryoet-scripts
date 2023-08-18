help([==[
Description
===========
PyTom is a toolbox developed for interpreting cryo electron tomography data. All steps from reconstruction, localization, alignment and classification are covered with standard and improved methods.

More information
================
 - Homepage: https://pytom.sites.uu.nl/
]==])

whatis([==[
Description
===========
PyTom is a toolbox developed for interpreting cryo electron tomography data. All steps from reconstruction, localization, alignment and classification are covered with standard and improved methods.

More information
================
 - Homepage: https://pytom.sites.uu.nl/
]==])

local root = "/scicore/home/engel0006/GROUP/pool-engel/soft/isonet"

conflict("cryoCARE")
conflict("Miniconda3")
conflict("EMAN2")
conflict("IsoNet")
conflict("MemBrain")
depends_on("cuDNN/8.2.1.32-CUDA-11.3.1")
-- depends_on("cuDNN/7.6.4.38-gcccuda-2019b")

prepend_path("PATH", pathJoin(root, "venv_isonet/bin"))
prepend_path("PATH", pathJoin(root, "IsoNet-0.2/bin"))
prepend_path("PYTHONPATH", root)
prepend_path("PATH", pathJoin(root, "scripts"))
