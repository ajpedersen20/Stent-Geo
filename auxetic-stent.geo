// Gmsh project created on Mon Jul 18 15:35:28 2022
Merge "auxetic-stent.stp";

e = 1e-1;
leftExt = -5.73;
rightExt = 0.81;
extrude_start() = Surface In BoundingBox {-2, -2, leftExt-e, 2, 2, leftExt+e};
extrude_end() = Surface In BoundingBox {-2, -2, rightExt-e, 2, 2, rightExt+e};

Physical Surface("start") = {extrude_start()};
Physical Surface("end") = {extrude_end()};
Physical Volume("volume") = {1};
