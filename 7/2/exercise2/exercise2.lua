function exercise2()
    local vid = launch_decode("videoplayback.webm", function(source, status)
        print(dump(status));
    end);
    target_verbose(vid);
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
