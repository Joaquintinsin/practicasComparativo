local X in
   X = 1
   local P in
      P = proc {$Y}
	     {Browse X}
	     {Browse Y}
	  end
      local X in
	 X = 2
	 {P X}
      end
   end
end
