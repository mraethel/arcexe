function exercise7()
    n = null_surface(VRESW,VRESH);
    g = fill_surface(100,100,0,255,0);
    r1 = fill_surface(10,10,255,0,0);
    r2 = fill_surface(10,10,255,0,0);
    r3 = fill_surface(10,10,255,0,0);
    r4 = fill_surface(10,10,255,0,0);

    center_image(g,n);
    
    link_image(r1,g,ANCHOR_UL);
    link_image(r2,g,ANCHOR_UR);
    link_image(r3,g,ANCHOR_LL);
    link_image(r4,g,ANCHOR_LR);

    image_mask_clear(g,MASK_OPACITY);

    blend_image({g,r1,r2,r3,r4},1.0);
    scale_image(g,2.0,2.0,100);
end
