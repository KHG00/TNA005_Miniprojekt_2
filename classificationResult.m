function [resultat] = classificationResult(Medel,testDigits,trainDigits,trainAns,testAns) 


nr = 54;

centroid = zeros(1,2);
centroid(1,1) = centroidmethodalgorithmtest(Medel,testDigits(:,:,nr));
centroid(1,2) = testAns(nr);

neighbour = zeros(1,2);
neighbour(1,1) = Nearestneighbouralgorithm(trainDigits,testDigits(:,:,nr),trainAns);
neighbour(1,2) = testAns(nr);



