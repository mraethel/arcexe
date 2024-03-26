function exercise4()
    fill1 = fill_surface(VRESW, VRESH, 255, 0, 0);
    local fill2 = fill_surface(VRESW, VRESH, 255, 255, 0);
    local fill3 = fill_surface(VRESW, VRESH, 255, 0, 255);
    local fill4 = fill_surface(VRESW, VRESH, 255, 255, 255);

--  local null = null_surface(VRESW, VRESH);
--  show_image(null);

--  image_framesetsize(null, 4);

--  set_image_as_frame(null, fill1, 0);
--  set_image_as_frame(null, fill2, 1);
--  set_image_as_frame(null, fill3, 2);
--  set_image_as_frame(null, fill4, 3);

    show_image(fill1);

    image_framesetsize(fill1, 4);

    set_image_as_frame(fill1, fill2, 1);
    set_image_as_frame(fill1, fill3, 2);
    set_image_as_frame(fill1, fill4, 3);

    cframe = 0;
end

function exercise4_input(iotbl)
    if (iotbl.keyboard and iotbl.active) then
        if (iotbl.number == 79) then cframe = (cframe + 1) % 4;
        elseif (iotbl.number == 80) then cframe = (cframe - 1) % 4;
        end
        
        image_active_frame(fill1, cframe);
    end
end
