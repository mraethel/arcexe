function exercise6()
    vid = render_text({
        [[\#a6d49f\ffonts/default.ttf,10]],
        [[H]],
        [[\#9cb380\ffonts/default.ttf,11]],
        [[e]],
        [[\#522A27\ffonts/default.ttf,12]],
        [[l]],
        [[\#c73e1d\ffonts/default.ttf,13]],
        [[l]],
        [[\#c59849\ffonts/default.ttf,14]],
        [[o]],
        [[]],
        [[ ]],
        [[\#a20021\ffonts/default.ttf,15]],
        [[W]],
        [[\#f52f57\ffonts/default.ttf,16]],
        [[o]],
        [[\#f79d5c\ffonts/default.ttf,17]],
        [[r]],
        [[\#f3752b\ffonts/default.ttf,18]],
        [[l]],
        [[\#ededf4\ffonts/default.ttf,19]],
        [[d]],
    });
    vid_props = image_surface_properties(vid);
    show_image(vid);
    move_image(
        vid,
        (VRESW/2) - (vid_props.width/2),
        (VRESH/2) - (vid_props.height/2)
    );
end

function exercise6_display_state(disp)
    resize_video_canvas(VRESW, VRESH);
    move_image(
        vid,
        (VRESW/2) - (vid_props.width/2),
        (VRESH/2) - (vid_props.height/2)
    );
end
