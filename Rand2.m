function [ basetimes,text ] = SolveR( basetimes )
%SolverB
basetimes=exp(exp(rand(1,length(basetimes))))-exp(1)+0.5;
text='exp(exp(random))-e+0.5';
end

