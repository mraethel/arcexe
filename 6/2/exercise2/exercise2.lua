function exercise2()
    cs = { };

    for i=1, 12 do
        cs[i] = color_surface(VRESW, VRESH, 255-i*20, i*20, 255-i*20);
        show_image(cs[i]);
    end

    print(dump(pick_items(0,0)));
    print(dump(pick_items(0,0,2)));
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
