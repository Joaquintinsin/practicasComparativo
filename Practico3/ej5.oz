local X in
   local Y in
      X = 1
      local T1 T2 in
	 T1 = 2
	 {Number.'+' T1 X T2}
	 Y = T2
      end
      local COND in
	 COND = (X > Y)
	 if COND then
	    {Browse X}
	 else
	    {Browse Y}
	 end
      end
   end
end
