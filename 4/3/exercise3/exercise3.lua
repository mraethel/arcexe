function exercise3()
    rbox = color_surface(200,200,255,0,0);
    move_image(rbox,100,100);
    blend_image(rbox,1.0);
    
    bbox = color_surface(200,200,0,0,255);
    move_image(bbox,10,10);
    blend_image(bbox,1.0);

    gbox = color_surface(200,200,0,255,0);
    gprops = image_surface_properties(gbox);
    blend_image(gbox,1.0);
    
    link_image(rbox,bbox);
    link_image(bbox,gbox);
    
    move_image(gbox,(VRESW - gprops.width)/2,(VRESH - gprops.height)/2);
    rotate_image(gbox,45,200);
    expire_image(gbox,180);
end
