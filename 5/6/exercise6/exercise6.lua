function exercise6()
    local w = VRESW;
    local h = VRESH;

    players = load_image_asynch("player.png", function(src, tbl)
        if (tbl.kind == "load_failed") then
            shutdown("failed to load " .. tbl.resource .. "!");
        end
    end);
    
    player = fill_surface(w, h, 0, 0, 0);
    show_image(player);
    
    image_framesetsize(player, 11);

    sprites = { };
    for i=0, 10 do 
        sprites[i] = null_surface(w, h);
        image_sharestorage(players, sprites[i]);
        image_set_txcos(sprites[i], {i/11, 10/11, (i+1)/11, 10/11, (i+1)/11, 11/11, i/11, 11/11});
        set_image_as_frame(player, sprites[i], i);
    end

    image_framecyclemode(player, CLOCKRATE);
end
