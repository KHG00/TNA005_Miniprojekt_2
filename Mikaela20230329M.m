
clear
clc

load uspsDigits
test = testDigits(:,:,2)
ima(test)


test2 = reshape(test,256,1);

test2

size(test2);

antal = zeros(10,1);
k = 7291

%Räkna antal av varje siffra
%============================================================
for i = 1:k
    % trainAns(i)
    antal(trainAns(i)+1,:) = antal(trainAns(i)+1,:) + 1;
end
%============================================================

% antal


 A = zeros(256,10);
summa = zeros(256,1);

 for i=1:k
     temp = reshape((trainDigits(:,:,i)),256,1);
     summa = summa+temp
     % A(:,trainAns(i)+1) = A(:,trainAns(i)+1) + temp(:,:); 
 end
 
 % A