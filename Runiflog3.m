function [ out,text ] = Runiflog3( basetimes )
%RSolve1 solves problems using basetimes(1,:) as lower and basetimes(2,:)
%as  upper for uniform distribution
out=log(basetimes(1,:))+(log(basetimes(2,:))-log(basetimes(1,:))).*rand(1,length(basetimes));
for i=2:3
    out2=log(basetimes(1,:))+(log(basetimes(2,:))-log(basetimes(1,:))).*rand(1,length(basetimes));
    out=min(out,out2);
end
out=exp(out);
text='3 times randomlog (lower, upper)';
end

