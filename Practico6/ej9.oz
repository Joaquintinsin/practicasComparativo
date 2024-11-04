local X in
    local C in
        X = 1
        {NewCell X C}
        local Uno in
            Uno = 1
            local ValorC in
                {Exchange C ValorC ValorC}
                local ResSuma in
                    ResSuma = ValorC + 1
                    {Exchange C ValorC ResSuma}
                    local T3 in
                        {Exchange C T3 T3}
                        {Browse T3}
                    end
                end
            end
            {Browse X}
        end
    end
end
{Browse 'Mio: '}
local X in 
    local C in 
        X = 1 
        {NewCell X C}
        local Uno in 
            Uno = 1 
            local ValorC in 
                {Exchange C ValorC ValorC}
                local ResSuma in 
                    ResSuma = ValorC + 1 
                    {Exchange C ValorC ResSuma}
                    local T3 in 
                        {Exchange C T3 T3}
                        {Browse T3}
                    end 
                end 
            end 
            {Browse X}
        end 
    end 
end
