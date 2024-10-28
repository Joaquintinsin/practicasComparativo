local Counter C Aux Aux2 in
   class Counter
      attr val
      meth init(V)
	 val := V
      end
      meth inc(V)
	 val := @val + V
      end
      meth get(?Res)
	 Res = @val
      end
   end

   C = {New Counter init(5)}
   {C inc(2)}
   {C get(Aux)}
   {Browse Aux}

   {C inc(100)}
   {C get(Aux2)}
   {Browse Aux2}
end
