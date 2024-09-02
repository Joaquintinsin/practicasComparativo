local Max in
   local A in
      local B in
	 local C in
	  Max = proc{$X Y Z}
		   local COND in
		      COND = (X >= Y)
		      if COND then
			 Z = X
		      else
			 Z = Y
		      end
		   end
		end
	    A = 3
	    B = 2
	    {Max A B C}
	    {Browse C}
	 end
      end
   end
end
