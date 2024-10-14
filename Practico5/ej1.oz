local XS YS ZS in
   local Append in
      Append = proc {$A B C}
		  case A of nil then C=B
		  [] X|As then Cs in
		     C=X|Cs
		     {Append As B Cs}
		  end
	       end
      /* XS = [1 2] */
      YS = [3]
      ZS = [1 2 3]
      {Append [1 2] YS XS}
      /* {Append XS YS ZS} */
      {Browse XS}
      {Browse YS}
      {Browse ZS}
   end
end
