function [ VBSCounts,times,VBStime ] = Slog( v,functions )
% SPLOT builds a survivor plot by applying solvers in 'functions' to v
% 'functions' is an array of function handles
% returns how often each is Virtual Best Solver, and time excess over VBS
n=length(functions);
m=length(v);
for i=n:-1:1 % backwards to avoid growing arrays
    f=functions{i};
    [timesf(:,i),text{i}]=f(v);
end
VBSCounts=zeros(1,n);
for j=m:-1:1 % backwards to avoid growing arrays
    w(j)=min(timesf(j,:));
end
for j=m:-1:1 % backwards to avoid growing arrays
    w(j)=min(timesf(j,:));
    for i=1:n
        if(w(j)==timesf(j,i))
            VBSCounts(i)=VBSCounts(i)+1; % if we have a tie, add to all
        end
    end        
end
VBStime=sum(w);
times=sum(timesf,1)-VBStime;
[x,y]=Survivor(w);
text{n+1}='Virtual best';
xvec(:,n+1)=x;
yvec(:,n+1)=y;
for i=n:-1:1 % backwards to avoid growing arrays
    u=timesf(:,i);
    [x,y]=Survivor(u);
    xvec(:,i)=x;
    yvec(:,i)=y;
end
semilogx(xvec,yvec);
xlabel('time (secs)');
ylabel('Number of problems solved');
legend(text,'Location','NorthWest');
end

