function [ out,text ] = RSolve1( basetimes )
%RSolve1 solves problems using basetimes(1,:) as means and basetimes(2,:) as  sd
out=basetimes(1,:)+basetimes(2,:).*randn(1,length(basetimes));
text='random (mean, s.d.)';
end

