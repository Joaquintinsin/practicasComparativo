declare Some in
fun {Some L}
   {FoldR L (fun{$X Y} X orelse Y end) false}
end

local V1 in
   V1 = {Some [true false false]}
   {Browse V1}
end
