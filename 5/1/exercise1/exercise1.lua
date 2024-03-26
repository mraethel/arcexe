function exercise1()
    vid = load_image_asynch("dsoa.png", function(src, tbl)
        if (tbl.kind == "load_failed") then
            shutdown("failed to load " .. tbl.resource .. "!");
        end
    end);
    if not valid_vid(vid) then shutdown("404 not found!"); end
    
    null = null_surface(100, 100);

    print(image_matchstorage(vid, null) and "true" or "false");

    image_sharestorage(vid, null);
    
    print(image_matchstorage(vid, null) and "true" or "false");

    show_image({vid, null});
end

function exercise1_clock_pulse(tickv)
    if (tickv == 5 * CLOCKRATE) then
        delete_image(vid);
    end
end
