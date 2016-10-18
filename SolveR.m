function [ basetimes,text ] = SolveR( basetimes )
%SolverB
for i=10:10:length(basetimes)
    basetimes(i)=basetimes(i)/10;
end
text='1in10 faster (x10)';
end

