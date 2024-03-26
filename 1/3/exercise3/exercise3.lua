function exercise3(argv)
    local vid = load_image_asynch(argv[1], function(src, tbl)
        if (tbl.kind == "load_failed") then shutdown("failed to load " .. tbl.resource .. "!"); end
    end);
    if not valid_vid(vid) then shutdown("404 not found!"); end
    show_image(vid);
end
