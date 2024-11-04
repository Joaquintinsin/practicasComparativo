local Y1 Y2 C in
   C={NewCell nil}
   thread X=1 C:=X|@C Y1='listo' end
   thread C:=2|@C Y2='listo' end
   {Barrier Y1 Y2}
   {Browse @C}
end
