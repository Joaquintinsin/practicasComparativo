declare SumList Suma ProdList in
fun {Suma X Y}
   X + Y
end
fun {SumList L}
   {FoldR L Suma 0}
end
fun {ProdList L}
   {FoldR L (fun{$X Y} X*Y end) 1}
end

local V1 V2 in
   V1 = {SumList [1 2 3]}
   {Browse V1}
   V2 = {ProdList [1 2 3 4 5]}
   {Browse V2}
end
