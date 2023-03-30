clear
clc

load uspsDigits

Medel = centroidmethodalgorithm(trainDigits,trainAns);

Svar = centroidmethodalgorithmtest(Medel,testDigits(:,:,54));