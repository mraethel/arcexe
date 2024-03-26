function exercise3()
    cs = { };

    for i=1, 6 do
        cs[i] = color_surface(VRESW, VRESH, 0, 0, 0);
        show_image(cs[i]);
    end

    for i=7, 12 do
        cs[i] = color_surface(VRESW, VRESH, 255-i*20, i*20, 255-i*20);
        show_image(cs[i]);
    end

    image_mask_set(cs[4], MASK_UNPICKABLE)

    print(dump(pick_items(0,0)));
    print(dump(pick_items(0,0,2)));

--  how to check equality???
end

-- taken from https://stackoverflow.com/questions/9168058/how-to-dump-a-table-to-console

function dump(o)
   if type(o) == 'table' then
      local s = '{ '
      for k,v in pairs(o) do
         if type(k) ~= 'number' then k = '"'..k..'"' end
         s = s .. '['..k..'] = ' .. dump(v) .. ','
      end
      return s .. '} '
   else
      return tostring(o)
   end
end
