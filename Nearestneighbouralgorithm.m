function [booool] = Nearestneighbouralgorithm(TrD,TeD,TrA,TeA)


%Beräkna avstånd mellan okänd siffra resp. vektor
%============================================================
temp1 = reshape(TrD,256,7291);
temp2 = reshape(TeD,256,1);
langd = zeros(7291,1);

for q = 1:7291
    langd(q) = sqrt(sum(((temp2(:,1)-temp1(:,q)).^2)));
end

%Beräkna min-värdet och lagrar positionen
%============================================================

[~,resultat] = min(langd(:));
resultat = TrA(resultat);

booool = 1;
if resultat ~= TeA
booool = 0;
end

