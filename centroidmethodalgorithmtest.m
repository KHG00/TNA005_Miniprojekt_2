function [booool] = centroidmethodalgorithmtest(Medel,Siffra,TeA)

%Beräkna avstånd mellan okänd siffra och medelvärden
%============================================================

 temp2 = reshape(Siffra,256,1);
 avstand = zeros(1,10);
 
 
     for q = 1:10
         avstand(1,q) = sqrt(sum(((temp2(:,1)-Medel(:,q)).^2)));
     end
 
 %Beräkna min-värdet och lagrar positionen
 %============================================================
 
 [~,resultat] = min(avstand);
 resultat = resultat - 1;
 
booool = 1;
if resultat ~= TeA
booool = 0;
end