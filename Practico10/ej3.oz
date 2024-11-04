declare
fun {Fib N}
    if N < 2 then
        N
    else
        {Fib N-1} + {Fib N-2}
    end
end

fun {FibProductor N S}
   if N >= 0 then
      local H T in
	 H = {Fib N}
	 S = H|T
	 thread {FibProductor N-1 T} end
      end
   else
      S = nil
   end
end

proc {FibConsumidor S}
   case S of H|T then
      {Browse H}
      {FibConsumidor T}
   [] nil then
      skip
   end
end

local X Stream T in
   X = 10
   T = thread {FibProductor X Stream} end
   thread {FibConsumidor Stream} end
end
