function [ out,text ] = RSolvelog10( basetimes )
%RSolve2 solves problems using basetimes(1,:) as means and basetimes(2,:) as  sd
% but in log space
lbasetimes=log(basetimes(1,:));
sd=basetimes(2,:).*(lbasetimes./basetimes(1,:));
out=lbasetimes+sd.*randn(1,length(lbasetimes));
for i=2:10
    out2=lbasetimes+sd.*randn(1,length(lbasetimes));
    out=min(out,out2);
end
out=exp(out);
text='10 times random (log mean, s.d.)';
end

