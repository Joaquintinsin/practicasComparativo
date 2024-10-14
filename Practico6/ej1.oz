local X C S in
   X = 1
   {NewCell X C}
   {NewCell X S}
   {Browse @C}
   {Browse C}
   {Browse S}
   {Browse C==S}
end

local Z X C1 C2 Temp1 Temp2 in
   X=10
   {NewCell X C1}
   {NewCell C1 C2}
   {Browse @C1}
   {Exchange C1 Temp1 C2}
   {Exchange C2 Temp2 Temp1}
   {Browse @C2}
   {Browse @C1}
end

local X Y Z in
   X=1
   {NewCell X Y}
   {NewCell 1 Z}
   {Browse @Y==@Z}
end
