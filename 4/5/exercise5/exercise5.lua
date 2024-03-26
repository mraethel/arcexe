function get_children(base)
    local children = { base };
    for _,v in ipairs(image_children(children[#children])) do
        for _,w in ipairs(get_children(v)) do
            table.insert(children,w);
        end
    end
    return children;
end

function get_parents(base)
    local parents = { base };
    while math.floor(image_parent(parents[#parents])) > 0 do
        table.insert(parents, math.floor(image_parent(parents[#parents])));
    end
    return parents;
end

function print_vid_table(table)
    for i,v in ipairs(table) do
        print(image_tracetag(v));
    end
end

function exercise5()
    local rbox = color_surface(200,200,255,0,0);
    move_image(rbox,100,100);
    
    local bbox = color_surface(200,200,0,0,255);
    move_image(bbox,10,10);

    local gbox = color_surface(200,200,0,255,0);
    
    blend_image({rbox,bbox,gbox},1.0);
    
    link_image(rbox,bbox);
    link_image(bbox,gbox);

    image_tracetag(rbox, "red");
    image_tracetag(bbox, "blue");
    image_tracetag(gbox, "green");

    local parents = get_parents(rbox);
    local children = get_children(gbox);

    print_vid_table(parents);
    print("---");
    print_vid_table(children);
end
