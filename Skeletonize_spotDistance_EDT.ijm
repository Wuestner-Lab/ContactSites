var tempo = getTitle;
var AktaDir= getInfo("image.directory");
var SlideNbr=nSlices;

 run("Clear Results");
 siz=0.117;
Dialog.create("Pixel size?")
Dialog.addNumber("Size in µm:",siz);
Dialog.show();
siz = Dialog.getNumber();
selectWindow(""+tempo+"");
setSlice(1);
run("Duplicate...", " ");
run( "Threshold..." );
waitForUser( "Set threshold and click OK." );
//run("Convert to Mask");
run( "Make Binary" );
run("Skeletonize");

setAutoThreshold("Default dark");

run("Convert to Mask");

run("Invert");

run("Exact Euclidean Distance Transform (3D)");
run("Fire");
//saveAs("Tiff", ""+AktaDir+"\\EDT_"+tempo+");

//convert EDT-map into µm:
selectWindow("EDT");
//run("Duplicate...", " ");
    w=getWidth();
    h=getHeight();
     d=0;
//     j=0;
	k=1;
        for (y=0; y<h; y++) {
        for (x=0; x<w; x++) {
	v = getPixel(x, y);
//	if(v>lthr && v<hthr) {		// whole-cell mask
	d=v*siz;			//distance value in µm
//	j=j+1;			//erh�he Index (Zahl der Pixel)
	putPixel(x,y,d);
//		}	//if...
//	k=k+1;
 	} 	//x...
	}	//y...
//end conversion
resetMinAndMax();
roiManager("Select", 0);

run("Measure");

//saveAs("Tiff", ""+AktaDir+"\\EDT_inMicron"+tempo+");