clc
clear all

load uspsDigits 


%Beräkna avstånd mellan okänd siffra resp. vektor
%============================================================
temp1 = reshape(trainDigits,256,7291);
temp2 = reshape(testDigits,256,2007);
langd = zeros(2007,7291);

for j = 1:2007
    for q = 1:7291
        langd(j,q) = sqrt(sum(((temp2(:,j)-temp1(:,q)).^2)));
    end
end

%%

%Beräkna min-värdet och lagrar positionen
%============================================================

resultat = zeros(2007,3);
resultat(:,3) = testAns;

procent = zeros(10,3);


for u = 1:2007
    [resultat(u,1),resultat(u,2)] = min(langd(u,:));
    resultat(u,2) = trainAns(resultat(u,2));
    if(resultat(u,2)) == testAns(u)
        procent(testAns(u)+1,1) = procent(testAns(u)+1,1) + 1;
    else
        procent(testAns(u)+1,2) = procent(testAns(u)+1,2) + 1;
    end
end

procent(:,3) = (procent(:,1)./(procent(:,1)+(procent(:,2)))).*100;



figure(1)
ima(testDigits(:,:,29))
