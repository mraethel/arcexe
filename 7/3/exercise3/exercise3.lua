function exercise3()
    vid = launch_decode("videoplayback.webm", function(source, status)
        print(status.kind);
    end);
    suspend_target(vid);
    show_image(vid);
    resize_image(vid, VRESW, VRESH);
end

function exercise3_input(iotbl)
    if iotbl.keyboard then stepframe_target(vid); end
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
