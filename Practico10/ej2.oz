local X Y T T1 in
   X = 1
   T = thread
	  Y = X
	  X+1
       end
   T1 = thread Y end
   {Browse Y}
   {Browse X}
   {Browse T}
   {Browse T1}
end
