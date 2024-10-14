local X in
    local C in
        local Y in
            Y = 1
            local Cero in
                Cero = 0
                {NewCell Cero C}
                {Exchange C X Y}
                local ValorC in
                    ValorC = @C
                    {Browse ValorC}
                    {Browse X}
                end
            end
        end
    end
end
