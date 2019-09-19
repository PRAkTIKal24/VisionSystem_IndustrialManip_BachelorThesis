1I = imread('tyreiter.jpg');

BW1 = im2bw(I,0.355);

Iseg = cellDetectionMATLAB(BW1);

% Display the original image and the segmented image side-by-side.
% imshowpair(BW1,Iseg,'montage')

