function [ x,y ] = Survivor( times )
%Survivor produces the x,y vectors for a survivor plot from the times
times=sort(times);
n=length(times);
x(n)=0; % avoid growing array
y=1:n;
accum=0;
for i=1:n
    accum=accum+times(i);
    x(i)=accum;
end

end

