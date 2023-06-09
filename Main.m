clear
clc

load uspsDigits

Medel = centroidmethodalgorithm(trainDigits,trainAns);

%%
clc
clf

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


%Grafen
figure(1);

hold on; grid on;
title("Correct Classification Percentage",'FontSize',20);

axis([-0.99 9.99 65 100]);

stem(0:9,resultNeighbour(:,3),'r','filled')
stem(0:9,resultatCentroid(:,3),'b','filled');

legend("Nearest Neighbour Method","Centroid Method",'FontSize',15,'Location','southeast');
hold off;

%%
%Testbilder
clc
clf

centroidmethodalgorithmtest(Medel,testDigits(:,:,13),testAns(13));
Nearestneighbouralgorithm(trainDigits,testDigits(:,:,13),trainAns,testAns(13));


figure(2);

ima(testDigits(:,:,13));

test21 = reshape(Medel(:,13),16,16);

ima(test21)









