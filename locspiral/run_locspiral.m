function run_locspiral(map1,map2,outrootname,mask,pixel_size,minRes,maxRes,threshold,bw)

	%We load the two unfilter half maps and average them and write the output
	%to disk.
	vol1 = ReadMRC(map1);
	vol2 = ReadMRC(map2);
	vol = 0.5*(vol1+vol2);
	clear vol1 vol2;
	WriteMRC(vol,pixel_size,[outrootname '_unfilt.mrc']);

	% Read mask
	mask = ReadMRC(mask); 

	WriteMRC(vol .* mask,pixel_size,[outrootname '_unfilt_masked.mrc']);

	%% LocSpiral
	[map W] = locSpiral(vol,mask > 0.5,pixel_size,minRes,maxRes,threshold,bw);

	WriteMRC(map,pixel_size,[outrootname '_LocSpiralMap.mrc']);
	WriteMRC(map .* mask,pixel_size,[outrootname '_LocSpiralMap_masked.mrc']);

end