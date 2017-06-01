function [ out,text ] = RSolve10( basetimes )
%RSolve1 solves problems using basetimes(1,:) as means and basetimes(2,:) as  sd
out=basetimes(1,:)+basetimes(2,:).*randn(1,length(basetimes));
for i=2:10
    out2=basetimes(1,:)+basetimes(2,:).*randn(1,length(basetimes));
    out=min(out,out2);
end
text='10 times random (mean, s.d.)';
end

