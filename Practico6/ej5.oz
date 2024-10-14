local Push Pop Top IsEmpty in
    fun {Push X Xs}
        R = {NewCell Xs}
    in
        R := X | @Xs
        @R
    end

    fun {Pop Xs}
       R = {NewCell nil}
    in
       case @Xs of nil then R := nil
       [] X | @Xs then R := @Xs
       end
       @R
    end

    fun {Top Xs}
       R = {NewCell Xs}
    in
       case @Xs of nil then R := nil
       [] X | @Xs then R := X
       end
       @R
    end

    fun {IsEmpty Xs}
       @Xs == nil
    end
	  
    local StackCelda in
       StackCelda = {NewCell [1 2 3]}
       {Browse {Push 1 StackCelda}}
       {Browse {Pop StackCelda}}
    end
end
