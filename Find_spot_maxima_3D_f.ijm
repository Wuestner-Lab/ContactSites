var tempo = getTitle;
var AktaDir= getInfo("image.directory");
var frames=nSlices;
var thresh=1, radius=3, num=2;
Dialog.create("Processing Parameters")
Dialog.addNumber("Prominence [1-100]:",thresh);
//Dialog.addNumber("Radius of ROIs [3...6]:",radius);
Dialog.show();
thresh = Dialog.getNumber();
//radius = Dialog.getNumber();
roiManager("Reset");
selectWindow(""+tempo+"");
for (j=1; j<=frames; j++){
setSlice(j);
//run("Duplicate...", " ");
run("Find Maxima...", "noise=thresh exclude output=[Point Selection] exclude");
//run("Find Maxima...", "prominence=2000 output=[Point Selection]");
//Roi.setName("Points");
roiManager("Add");
}
