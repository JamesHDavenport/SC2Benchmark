function [ out,text ] = RSolvelog3( basetimes )
%RSolve2 solves problems using basetimes(1,:) as means and basetimes(2,:) as  sd
% but in log space
lbasetimes=log(basetimes(1,:));
sd=basetimes(2,:).*(lbasetimes./basetimes(1,:));
out1=lbasetimes+sd.*randn(1,length(lbasetimes));
out2=lbasetimes+sd.*randn(1,length(lbasetimes));
out3=lbasetimes+sd.*randn(1,length(lbasetimes));
out=min(out1,out2);
out=min(out,out3);
out=exp(out);
text='3 times random (log mean, s.d.)';
end

