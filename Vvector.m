v=cat(2,[1.2:0.01:3],[5:1:50],[50:5:300]);
Splot(v,{@SolveU,@SolveF,@SolveH,@SolveR,@SolveB})
Slog(v,{@SolveU,@SolveF,@SolveH,@SolveR,@SolveB})