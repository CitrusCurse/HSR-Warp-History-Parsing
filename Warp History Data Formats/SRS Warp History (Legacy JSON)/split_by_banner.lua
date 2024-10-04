function cb_filter(tag,ts,record)
--Remove unwanted fields--
  record=record["data"]
  record=record["stores"]
  record=record['1_warp-v2']

--Define local variables--
  local warps={}
  local standard=record["items_1"]
  local departure=record["items_2"]
  local limited_char=record["items_11"]
  local limited_lc=record["items_12"]
  
--Add warps to tables--
  if standard then table.insert(warps,{log=standard})end;
  if departure then table.insert(warps,{log=departure})end;
  if limited_char then table.insert(warps,{log=limited_char})end;
  if limited_lc then table.insert(warps,{log=limited_lc})end;

--Set array as the log field--
  record.log=warps;

--Split records by banner-- 
  if record.log~=nil then 
    return 1,ts,record.log 
  else 
    return 1,ts,record 
  end 
end
