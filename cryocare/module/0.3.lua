local about = [==[
    Description
    ===========
    Cryo-CARE: Content-Aware Image Restoration for Cryo-Transmission Electron Microscopy Data.
    This package is a memory efficient implementation of cryoCARE. This setup trains a denoising U-Net for tomographic reconstruction according to the Noise2Noise training paradigm. Therefor the user has to provide two tomograms of the same sample. The simplest way to achieve this is with direct-detector movie-frames. These movie-frames can be split in two halves (e.g. with MotionCor2 -SplitSum 1 or with IMOD alignframes -debug 10000) from which two identical, up to random noise, tomograms can be reconsturcted. These two (even and odd) tomograms can be used as input to this cryoCARE implementation.
    
    More information
    ================
     - Homepage: https://github.com/juglab/cryoCARE_pip
    ]==]

help(about)
whatis(about)

local envpath = "/scicore/projects/scicore-p-structsoft/ubuntu/software/Miniconda3/miniconda3_python3.12.1/envs/cryocare-ub-env/"

local root = "/scicore/projects/scicore-p-structsoft/ubuntu/software/cryoCARE"

depends_on("Miniconda3")

execute {cmd="conda activate " .. envpath, modeA={"load"}}
execute {cmd="conda deactivate", modeA={"unload"}}

prepend_path("PATH", pathJoin(root, "scripts"))
