function [ out,text ] = RSolvelog1( basetimes )
%RSolve2 solves problems using basetimes(1,:) as means and basetimes(2,:) as  sd
% but in log space
lbasetimes=log(basetimes(1,:));
sd=basetimes(2,:).*(lbasetimes./basetimes(1,:));
out=lbasetimes+sd.*randn(1,length(lbasetimes));
out=exp(out);
text='random (log mean, s.d.)';
end

