function [ VBSCounts,times,VBStime ] = Splotfuzz( v,functions )
% SPLOT builds a survivor plot by applying solvers in 'functions' to v
% 'functions' is an array of function handles
% returns how often each is Virtual Best Solver, and time excess over VBS
% Fuzzes each solver by a random in [0.8,1.2]
n=length(functions);
m=length(v);
for i=n:-1:1 % backwards to avoid growing arrays
    f=functions{i};
    [tmp,text{i}]=f(v);
    timesf(:,i)=tmp.*(rand(1,m)*0.4+0.8);
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
plot(xvec,yvec);
xlabel('time (secs)');
ylabel('Number of problems solved');
legend(text,'Location','SouthEast');
end

