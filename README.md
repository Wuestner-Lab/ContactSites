# ContactSites
Here, you find ImageJ Macros to automatize the analysis of membrane contact sites (MCSs) between mitochondria and endosomes/lysosomes (endo-lysosomes) based on two-color confocal fluorescence microscopy data. Macros are provided for analysis in two and three dimensions based on (x,y) and (x,y,z) image data, respectively. 

2D analysis:
First, you identify the x,y-position of all endo-lysosomes from a fluorescence image of suitably labeled cells. To identiy endo-lysosomes various markers can be used (e.g. fluorescent dextran or immunos-taining using antibodies against Lamp1). You open your image within ImageJ/Fiji and run /Process/FindMaxima to find an appropriate value for the Prominence using 'Preview Point selection', but without applying it. You download and run the Macro 'Find_spot_maxima_f.ijm' using the found prominence value, giving you a list of ROIs assembled in one ROI named 'Points' in the ROI Manager of ImageJ.

Second, you download the Macro 'Skeletonize_spotDistance_EDT.ijm' and run it on the corresponding image of labeled mitochondria. For labeling MitoTracker or immunostaining (e.g. against VDAC or TOM20) can be used. It creates a binarized skeleton of the mitochondria and from that an Euclidian distance transform. 
Further details of the image analysis workflow and results of it can be found in the publication 
