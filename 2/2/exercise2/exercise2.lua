function exercise2()
    local interp = {
        INTERP_LINEAR,
        INTERP_SINE,
        INTERP_EXPIN,
        INTERP_EXPOUT,
        INTERP_EXPINOUT,
        INTERP_SMOOTHSTEP
    };

   for i=1,#interp do
       local box = initbox(i,#interp);
       movebox(box, interp[i]);
   end
end

function initbox(i,m)
    local box = color_surface(
        (VRESW/m)/2,
        (VRESW/m)/2,
        255,
        0,
        0
    );
    
    box_props = image_surface_properties(box);

    move_image(
        box,
        ((box_props.width*2) * (i-1)) + (box_props.width/2),
        0
    );

    show_image(box);
    return box;
end

function movebox(box, interp)
    box_props = image_surface_properties(box);
    
    move_image(
        box,
        box_props.x,
        VRESH - (box_props.height),
        CLOCKRATE*10,
        interp
    );
end
