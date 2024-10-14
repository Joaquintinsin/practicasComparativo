declare Enteros in
fun lazy {Enteros N}
   N | {Enteros N+1}
end

local L in
   L = {Enteros 1}
   case L of
      A|B|C|D|_ then {Browse A|B|C}{Browse L.1}{Browse L.2}
   end
end
