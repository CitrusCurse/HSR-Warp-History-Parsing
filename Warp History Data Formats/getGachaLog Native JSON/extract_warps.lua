function cb_filter(tag, ts, record)
--Remove unwanted fields--
  record = record["data"]
  record.log=record["list"]
--Split records--
  if record.log ~= nil then
    return 1, ts, record.list
  else
    return 1, ts, record
  end
end
