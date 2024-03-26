function exercise2()
    vid = load_image_asynch("dsoa.png", function(src, tbl)
        if (tbl.kind == "loaded") then
            resize_image(src, VRESW / 2, VRESH / 2);
        elseif (tbl.kind == "load_failed") then
            shutdown("failed to load " .. tbl.resource .. "!");
        end
    end);
    if not valid_vid(vid) then shutdown("404 not found!"); end

    null1 = null_surface(VRESW / 2, VRESH / 2);
    null2 = null_surface(VRESW / 2, VRESH / 2);
    null3 = null_surface(VRESW / 2, VRESH / 2);

    move_image(null1, VRESW / 2, 0);
    move_image(null2, 0, VRESH / 2);
    move_image(null3, VRESW / 2, VRESH / 2);

    image_sharestorage(vid, null1);
    image_sharestorage(vid, null2);
    image_sharestorage(vid, null3);

    image_set_txcos(vid, {0, 0, 0.5, 0, 0.5, 0.5, 0, 0.5});
    image_set_txcos(null1, {0.5, 0, 1, 0, 1, 0.5, 0.5, 0.5});
    image_set_txcos(null2, {0, 0.5, 0.5, 0.5, 0.5, 1, 0, 1});
    image_set_txcos(null3, {0.5, 0.5, 1, 0.5, 1, 1, 0.5, 1});

    show_image({vid, null1, null2, null3});
end
