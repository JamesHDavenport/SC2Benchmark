function [ out,text ] = RSolve1( basetimes )
%RSolve1 solves problems using basetimes(1,:) as means and basetimes(2,:) as  sd
out1=basetimes(1,:)+basetimes(2,:).*randn(1,length(basetimes));
out2=basetimes(1,:)+basetimes(2,:).*randn(1,length(basetimes));
out=min(out1,out2);
text='2 times random (mean, s.d.)';
end

