function exercise3()
    vid = color_surface(
        100,
        100,
        255,
        0,
        0
    );
    
    local vid_props = image_surface_properties(vid);

    show_image(
        vid,
        "once upon a bug...",
        CLOCKRATE
    );
    tag_image_transform(
        vid,
        MASK_OPACITY,
        function()
            move_image(
                vid,
                VRESW/2 - (vid_props.width/2),
                VRESH/2 - (vid_props.height/2),
                CLOCKRATE
            );
            tag_image_transform(
                vid,
                MASK_POSITION,
                function()
                    rotate_image(
                        vid,
                        90,
                        CLOCKRATE
                    );
                    tag_image_transform(
                        vid,
                        MASK_ORIENTATION,
                        function()
                            scale_image(
                                vid,
                                2,
                                2,
                                CLOCKRATE
                            );
                        end
                    );         
                end
            );
        end
    );
end
