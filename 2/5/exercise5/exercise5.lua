function exercise5()
    local vid = fill_surface(
        100,
        100,
        0,
        255,
        0
    );
    local vid_props = image_surface_properties(vid);
    show_image(vid);
    move_image(
        vid,
        0,
        0
    );

    image_transform_cycle(
        vid,
        1
    );
    move_image(
        vid,
        VRESW - vid_props.width,
        0,
        CLOCKRATE
    );
    move_image(
        vid,
        VRESW - vid_props.width,
        VRESH - vid_props.height,
        CLOCKRATE
    );
    move_image(
        vid,
        0,
        VRESH - vid_props.height,
        CLOCKRATE
    );
    move_image(
        vid,
        0,
        0,
        CLOCKRATE
    );
end
