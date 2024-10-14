declare {Digit, TwoDigit, StrangeTwoDigit}
fun {Digit}
   choice 0 [] 1 end
end
fun {TwoDigit}
   10*{Digit}+{Digit}
end
fun {StrangeTwoDigit}
   {Digit}+10*{Digit}
end

local X in
   {Browse {SolveAll Digit}}
   {Browse {SolveAll TwoDigit}}
   {Browse {SolveAll StrangeTwoDigit}}
end
