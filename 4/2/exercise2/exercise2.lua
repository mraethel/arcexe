function exercise2()
    rbox = color_surface(200,200,255,0,0);
    move_image(rbox,100,100);
    blend_image(rbox,0.5);
    
    bbox = color_surface(200,200,0,0,255);
    move_image(bbox,10,10);
    rotate_image(bbox,100);
    blend_image(bbox,0.5);
    
    link_image(rbox,bbox);
    move_image(rbox,200,200);
    rotate_image(rbox,100);
    
    move_image(WORLDID,100,100);
end
