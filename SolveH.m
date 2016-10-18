function [ out,text ] = SolveH( basetimes )
%SolveU solves a problem 0.5 seconds and 30% faster than the base time
out=(basetimes-0.5).*0.7;
text='hybrid (0.5 sec; 30%)';
end

