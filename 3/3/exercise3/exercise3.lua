function exercise3()
    symtable = system_load("builtin/keyboard.lua")();
end

function exercise3_input(iotbl)
    if iotbl.keyboard and not iotbl.active then
        print(symtable[iotbl.keysym]);
    end
end

-- Is this working?
