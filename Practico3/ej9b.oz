declare Ejemplo Concat Map in
fun {Ejemplo Ls LRes}
   case Ls
   of
      nil then LRes
   [] _|Lr then {Ejemplo Lr {Concat [{Map x}] LRes}}
   end
end
fun {Concat xs ys}
   xs
end
fun {Map a}
   a
end


local L1 L2 in
   L1 = {Ejemplo [1 2] []}
   {Browse L1}
   L2 = {Ejemplo nil []}
   {Browse L2}
end
