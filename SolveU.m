function [ out,text ] = SolveU( basetimes )
%SolveU solves a problem 1 second faster than the base time
out=basetimes-1;
text='1 second shorter';
end

