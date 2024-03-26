function exercise5()
    system_load("builtin/mouse.lua")()
    
    mouse_setup(color_surface(8,8,0,255,0),65535,1,false,false);
 
    local box = color_surface(32,32,255,0,0);
    show_image(box);
    
    local box2= color_surface(32,32,0,0,255);
    move_image(box2,100,100);
    show_image(box2);
    
    mouse_addlistener({
        name = "lstnr",
        own = function(ctx,vid) return vid == box; end,
        drag = function(ctx,vid,dx,dy) nudge_image(vid,dx,dy); end
    }, {"drag"});
    mouse_dumphandlers();
end

function exercise5_clock_pulse(tickv,tickc)
    mouse_tick(tickc);
end

function exercise5_input(iotbl)
    if iotbl.mouse then
        mouse_iotbl_input(iotbl);
    end
end
