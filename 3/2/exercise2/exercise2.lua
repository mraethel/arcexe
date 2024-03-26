function exercise2() end
function exercise2_clock_pulse(tickv)
    if (math.fmod(tickv,2) == 0) then
        local vid = color_surface(
            100,
            100,
            math.random(0,255),
            math.random(0,255),
            math.random(0,255)
        );

        props = image_surface_properties(vid);
        expire_image(vid,2);

        move_image(
            vid,
            math.random(0,VRESW - props.width),
            math.random(0,VRESH - props.height)
        );
        show_image(vid);
    end
end
