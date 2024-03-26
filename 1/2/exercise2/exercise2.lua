function exercise2(argv)
    local vid = load_image(argv[1]);
    if not valid_vid(vid) then shutdown("404 not found!"); end
    show_image(vid);
end
