clear
clc

load uspsDigits

%Tester
%============================================================
% test = testDigits(:,:,2)
% ima(test)
% test2 = reshape(test,256,1);
% test2
% size(test2);
%============================================================


antal = zeros(10,1);
k = 7291;


%Räkna antal av varje siffra
%============================================================
for i = 1:k
    % trainAns(i)
    antal(trainAns(i)+1,:) = antal(trainAns(i)+1,:) + 1;
end
%============================================================





%Loop som lägger ihop vektorernas värden
%============================================================
A = zeros(256,10);
summa = zeros(256,1);

 for i=1:k
     temp = reshape((trainDigits(:,:,i)),256,1);
     % summa = summa+temp
     A(:,trainAns(i)+1) = A(:,trainAns(i)+1) + temp(:,:); 
 end
%============================================================
 
 % A



%Beräkna medelvärde
%============================================================
medel = zeros(256,10);

for i = 1:10
    medel(:,i) = A(:,i)./antal(i);
end
%============================================================



%Avrunda
%============================================================

  
 %  for i = 1:10
 % 
 %      for m = 1:256
 %          if medel(m,i) < 0.1
 %          medel(m,i) = 0;
 %          elseif medel(m,i) < 0.2
 %              medel(m,i) = 0.1;
 %          elseif medel(m,i) < 0.3
 %                  medel(m,i) = 0.2;
 %          elseif medel(m,i) < 0.4
 %                  medel(m,i) = 0.3;
 %          elseif medel(m,i) < 0.5
 %                  medel(m,i) = 0.4;
 %          elseif medel(m,i) < 0.6
 %                  medel(m,i) = 0.5;
 %          elseif medel(m,i) < 0.7
 %                  medel(m,i) = 0.6;
 %          elseif medel(m,i) < 0.8
 %                  medel(m,i) = 0.7;
 %          elseif medel(m,i) < 0.9
 %                  medel(m,i) = 0.8;
 %          elseif medel(m,i) < 1.0
 %                  medel(m,i) = 0.9;
 %          else
 %              medel(m,i) = 1;
 %          end
 %      end
 % end

%Beräkna avstånd mellan okänd siffra och medelvärden
%============================================================

temp2 = reshape(testDigits,256,2007);
langd = zeros(2007,10);

for j = 1:2007
    for q = 1:10
        langd(j,q) = sqrt(sum(((temp2(:,j)-medel(:,q)).^2)));
    end
end

%Beräkna min-värdet och lagrar positionen
%============================================================

resultat = zeros(2007,3);
resultat(:,3) = testAns;

procent = zeros(10,3);


for u = 1:2007
    [resultat(u,1),resultat(u,2)] = min(langd(u,:));
    resultat(u,2) = resultat(u,2)-1;
    if(resultat(u,2)) == testAns(u)
        procent(testAns(u)+1,1) = procent(testAns(u)+1,1) + 1;
    else
        procent(testAns(u)+1,2) = procent(testAns(u)+1,2) + 1;
    end
end

procent(:,3) = (procent(:,1)./(procent(:,1)+(procent(:,2)))).*100;

figure(1)
ima(testDigits(:,:,71))

figure(2)
op = reshape(medel(:,9),16,16)
ima(op)




 %  langd
 % ima(testDigits(:,:,5))
 % medel
 % test21 = reshape(medel(:,5),16,16)
 % 
 % ima(test21)







