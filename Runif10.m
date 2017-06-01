function [ out,text ] = Runif10( basetimes )
%RSolve1 solves problems using basetimes(1,:) as lower and basetimes(2,:)
%as  upper for uniform distribution
out=basetimes(1,:)+(basetimes(2,:)-basetimes(1,:)).*rand(1,length(basetimes));
for i=2:10
    out2=basetimes(1,:)+(basetimes(2,:)-basetimes(1,:)).*rand(1,length(basetimes));
    out=min(out,out2);
end
text='10 times random (lower, upper)';
end

