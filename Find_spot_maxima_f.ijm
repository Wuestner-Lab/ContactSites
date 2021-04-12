var tempo = getTitle;
var AktaDir= getInfo("image.directory");
var SlideNbr=nSlices;
var thresh=100, radius=3, num=2;
Dialog.create("Processing Parameters")
Dialog.addNumber("Prominence [20...4000]:",thresh);
//Dialog.addNumber("Radius of ROIs [3...6]:",radius);
Dialog.show();
thresh = Dialog.getNumber();
//radius = Dialog.getNumber();
selectWindow(""+tempo+"");
setSlice(1);
//run("Duplicate...", " ");
roiManager("Reset");
run("Find Maxima...", "noise=thresh exclude output=[Point Selection] exclude");
//run("Find Maxima...", "prominence=2000 output=[Point Selection]");
Roi.setName("Points");
roiManager("Add");

