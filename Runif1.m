function [ out,text ] = Runif1( basetimes )
%RSolve1 solves problems using basetimes(1,:) as lower and basetimes(2,:)
%as  upper for uniform distribution
out=basetimes(1,:)+(basetimes(2,:)-basetimes(1,:)).*rand(1,length(basetimes));
text='random (lower, upper)';
end

