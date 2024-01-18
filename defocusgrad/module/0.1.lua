help([==[

Description
===========
A Python script to determine the polarity of the defocus gradient in a tilt series using robust fitting (RANSAC).

More information
================
 - Homepage: https://github.com/CellArchLab/cryoet-scripts/
]==])

whatis([==[

Description
===========
A Python script to determine the polarity of the defocus gradient in a tilt series using robust fitting (RANSAC).

More information
================
 - Homepage: https://github.com/CellArchLab/cryoet-scripts/
]==])

local root = "/scicore/home/engel0006/GROUP/pool-engel/soft/defocusgrad"

load("Miniconda3")
load("IMOD")
load("CTFFIND")

prepend_path("PATH", root)
