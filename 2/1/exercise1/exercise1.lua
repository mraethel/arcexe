function exercise1()
    vid = color_surface(
        100,
        100,
        255,
        0,
        0
    );
    local vid_props = image_surface_properties(vid);
    
    show_image(vid);

    move_image(
        vid,
        VRESW/2 - (vid_props.width/2),
        VRESH/2 - (vid_props.height/2),
        CLOCKRATE
    );
end
