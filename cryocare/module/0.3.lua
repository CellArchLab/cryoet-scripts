help([==[
Description
===========
Cryo-CARE: Content-Aware Image Restoration for Cryo-Transmission Electron Microscopy Data.
This package is a memory efficient implementation of cryoCARE. This setup trains a denoising U-Net for tomographic reconstruction according to the Noise2Noise training paradigm. Therefor the user has to provide two tomograms of the same sample. The simplest way to achieve this is with direct-detector movie-frames. These movie-frames can be split in two halves (e.g. with MotionCor2 -SplitSum 1 or with IMOD alignframes -debug 10000) from which two identical, up to random noise, tomograms can be reconsturcted. These two (even and odd) tomograms can be used as input to this cryoCARE implementation.

More information
================
 - Homepage: https://github.com/juglab/cryoCARE_pip
]==])

whatis([==[
Description
===========
Cryo-CARE: Content-Aware Image Restoration for Cryo-Transmission Electron Microscopy Data.
This package is a memory efficient implementation of cryoCARE. This setup trains a denoising U-Net for tomographic reconstruction according to the Noise2Noise training paradigm. Therefor the user has to provide two tomograms of the same sample. The simplest way to achieve this is with direct-detector movie-frames. These movie-frames can be split in two halves (e.g. with MotionCor2 -SplitSum 1 or with IMOD alignframes -debug 10000) from which two identical, up to random noise, tomograms can be reconsturcted. These two (even and odd) tomograms can be used as input to this cryoCARE implementation.

More information
================
 - Homepage: https://github.com/juglab/cryoCARE_pip
 ]==])

local root = "/scicore/home/engel0006/GROUP/pool-engel/soft/cryo-care/cryoCARE_pip"

conflict("cryoCARE")
conflict("Miniconda3")
conflict("EMAN2")
conflict("IsoNet")
conflict("MemBrain")

prepend_path("PATH", pathJoin(root, "cryocare_11/bin"))
prepend_path("PATH", pathJoin(root, "scripts"))