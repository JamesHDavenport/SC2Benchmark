function [ out,text ] = RSolve20( basetimes )
%RSolve1 solves problems using basetimes(1,:) as means and basetimes(2,:) as  sd
out=basetimes(1,:)+basetimes(2,:).*randn(1,length(basetimes));
for i=2:20
    out2=basetimes(1,:)+basetimes(2,:).*randn(1,length(basetimes));
    out=min(out,out2);
end
text='20 times random (mean, s.d.)';
end

