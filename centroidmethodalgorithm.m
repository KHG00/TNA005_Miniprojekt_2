function [medel] = centroidmethodalgorithm(TD,TA)

[~,~,digits] = size(TD);

TD2 = reshape(TD,256,digits);

%Räkna antal av varje siffra
%============================================================

antal = zeros(10,1);
for i = 1:digits
    antal(TA(i)+1,:) = antal(TA(i)+1,:) + 1;
end
%============================================================

%Loop som lägger ihop vektorernas värden
%============================================================
A = zeros(256,10);

 for i=1:digits
     A(:,TA(i)+1) = A(:,TA(i)+1) + TD2(:,i); 
 end

%============================================================
 

%Beräkna medelvärde
%============================================================
medel = zeros(256,10);

for i = 1:10
    medel(:,i) = A(:,i)./antal(i);
end
%============================================================