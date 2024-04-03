function exercise4()
    local pbox = color_surface(200,200,255,0,255);
    move_image(pbox,200,200);

    local rbox = color_surface(200,200,255,0,0);
    move_image(rbox,100,100);
    
    local bbox = color_surface(200,200,0,0,255);
    move_image(bbox,10,10);

    local gbox = color_surface(200,200,0,255,0);
    local gprops = image_surface_properties(gbox);
    
    blend_image({pbox,rbox,bbox,gbox},1.0,200);
--  show_image(pbox);
--  show_image(rbox);
--  show_image(bbox);
--  blend_image(gbox,1.0,100);
    
    link_image(pbox,rbox);
    link_image(rbox,bbox);
    link_image(bbox,gbox);

    expire_image(gbox,180);
--  move_image(gbox,(VRESW - gprops.width)/2,(VRESH - gprops.height)/2);
    rotate_image({rbox,gbox},45,200);
--  rotate_image(gbox,45,200);

--  image_mask_clear(pbox,MASK_LIVING);
--  image_mask_clear(rbox,MASK_LIVING);
--  image_mask_clear(bbox,MASK_LIVING);
--  image_mask_clear(gbox,MASK_LIVING);
--  image_mask_clear(pbox,MASK_OPACITY);
--  image_mask_clear(rbox,MASK_OPACITY);
--  image_mask_clear(bbox,MASK_OPACITY);
--  image_mask_clear(gbox,MASK_OPACITY);
--  image_mask_clear(pbox,MASK_ORIENTATION);
--  image_mask_clear(rbox,MASK_ORIENTATION);
--  image_mask_clear(bbox,MASK_ORIENTATION);
--  image_mask_clear(gbox,MASK_ORIENTATION);
end
