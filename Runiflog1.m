function [ out,text ] = Runiflog1( basetimes )
%RSolve1 solves problems using basetimes(1,:) as lower and basetimes(2,:)
%as  upper for uniform distribution
out=log(basetimes(1,:))+(log(basetimes(2,:))-log(basetimes(1,:))).*rand(1,length(basetimes));
out=exp(out);
text='random (in log space) (lower, upper)';
end

