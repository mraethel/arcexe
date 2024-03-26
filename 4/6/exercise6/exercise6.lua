function exercise6()
    local rbox = color_surface(200,200,255,0,0);
    move_image(rbox,100,100);
    
    local bbox = color_surface(200,200,0,0,255);
    move_image(bbox,10,10);

    local gbox = color_surface(200,200,0,255,0);
    local gprops = image_surface_properties(gbox);
    
    blend_image({rbox,bbox,gbox},0.5);
    
    link_image(rbox,bbox);
    link_image(bbox,gbox);
    
    move_image(gbox,(VRESW - gprops.width)/2,(VRESH - gprops.height)/2);
    rotate_image({rbox,gbox},45);

    image_clip_on(rbox,CLIP_ON);
--  image_clip_on(rbox,CLIP_SHALLOW);
end

-- Is this working? (Bug)
