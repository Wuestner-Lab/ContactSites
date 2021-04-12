var tempo = getTitle;
var AktaDir= getInfo("image.directory");
var SlideNbr=nSlices;
frames=SlideNbr;
for (j=1; j<=frames; j+=1){
	selectWindow(""+tempo+"");
	k=j+0;
setSlice(k);
i=j-1;
roiManager("Select", i);

run("Measure");
}

//saveAs("Tiff", ""+AktaDir+"\\EDT_inMicron"+tempo+");