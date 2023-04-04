clear
clc

load uspsDigits

Medel = centroidmethodalgorithm(trainDigits,trainAns);

%%
antal = 2007;

centroid = ones(antal,2);
neighbour = zeros(antal,2);

for nr = 1:antal
    centroid(nr,1) = centroidmethodalgorithmtest(Medel,testDigits(:,:,nr),testAns(nr));
    centroid(nr,2) = testAns(nr);
    
    neighbour(nr,1) = Nearestneighbouralgorithm(trainDigits,testDigits(:,:,nr),trainAns,testAns(nr));
    neighbour(nr,2) = testAns(nr);
end

resultatCentroid = classificationResult(centroid);
resultNeighbour = classificationResult(neighbour);
