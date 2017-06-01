function [ out,text ] = Runif20( basetimes )
%RSolve1 solves problems using basetimes(1,:) as lower and basetimes(2,:)
%as  upper for uniform distribution
out=basetimes(1,:)+(basetimes(2,:)-basetimes(1,:)).*rand(1,length(basetimes));
for i=2:20
    out2=basetimes(1,:)+(basetimes(2,:)-basetimes(1,:)).*rand(1,length(basetimes));
    out=min(out,out2);
end
text='20 times random (lower, upper)';
end

