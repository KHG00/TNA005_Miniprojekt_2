function [procent] = classificationResult(numList) 

procent = zeros(10,3);

for u = 1:2007
    if(numList(u,1)) == 1
        procent(numList(u,2)+1,1) = procent(numList(u,2)+1,1)+1;
    else
        procent(numList(u,2)+1,2) = procent(numList(u,2)+1,2)+1;
    end
end

procent(:,3) = (procent(:,1)./(procent(:,1)+(procent(:,2)))).*100;


