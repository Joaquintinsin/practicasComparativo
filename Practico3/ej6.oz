local List in
   fun {Length List R}
      case List
      of nil then R
      [] _|Lr then {Length List R+1}
      end
   end
   List = [1 2 3 4]
   {Browse {Length List 0}}
end
