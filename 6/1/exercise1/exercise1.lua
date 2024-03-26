function exercise1()
    c = color_surface(32, 32, 213, 152, 027);
    show_image(c);

    det = true;

    move_image(c, VRESW-32, VRESH-32, 200);
end

function exercise1_clock_pulse(tickv)
    if image_hit(c, VRESW/2, VRESH/2) and det then
        print("detected!");
        det = false;
    end
end
