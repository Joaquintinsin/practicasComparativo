declare Length in
fun {Length Ls R}
   case Ls
   of
      nil then R
   [] _|Lr then {Length Lr R+1}
   end
end

local L1 L2 in
   L1 = {Length [1 2] 0}
   {Browse L1}
   L2 = {Length nil 0}
   {Browse L2}
end
