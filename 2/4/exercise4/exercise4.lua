function exercise4()
    box1 = color_surface(
        100,
        100,
        255,
        0,
        0
    );

    local box1_props = image_surface_properties(box1);

    show_image(
        box1,
        "once upon a bug...",
        CLOCKRATE
    );
    tag_image_transform(
        box1,
        MASK_OPACITY,
        function()
            move_image(
                box1,
                VRESW/2 - (box1_props.width/2),
                VRESH/2 - (box1_props.height/2),
                CLOCKRATE
            );
            tag_image_transform(
                box1,
                MASK_POSITION,
                function()
                    rotate_image(
                        box1,
                        90,
                        CLOCKRATE
                    );
                    tag_image_transform(
                        box1,
                        MASK_ORIENTATION,
                        function()
                            scale_image(
                                box1,
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

    box2 = color_surface(
        100,
        100,
        0,
        255,
        0
    );
    
    local box2_props = image_surface_properties(box2);
    
    nudge_image(
        box2,
        box2_props.width*2,
        0
    );

    show_image(
        box2,
        "once upon a bug...",
        CLOCKRATE
    );
    tag_image_transform(
        box2,
        MASK_OPACITY,
        function()
            nudge_image(
                box2,
                VRESW/2 - (box2_props.width/2),
                VRESH/2 - (box2_props.height/2),
                CLOCKRATE
            );
            tag_image_transform(
                box2,
                MASK_POSITION,
                function()
                    rotate_image(
                        box2,
                        90,
                        CLOCKRATE
                    );
                    tag_image_transform(
                        box2,
                        MASK_ORIENTATION,
                        function()
                            resize_image(
                                box2,
                                box2_props.width*2,
                                box2_props.height*2,
                                CLOCKRATE
                            );
                        end
                    );         
                end
            );
        end
    );
end
