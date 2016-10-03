v=cat(2,[1.1:0.002:2],[2:1:50],[50:5:300]);
[VBScount, excess]=Splot(v,{@SolveU,@SolveF,@SolveH,@SolveB})
[VBScount, excess,VBStime]=Slog(v,{@SolveU,@SolveF,@SolveH,@SolveB})