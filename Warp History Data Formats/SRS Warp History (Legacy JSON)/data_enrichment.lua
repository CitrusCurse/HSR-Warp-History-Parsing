function cb_filter(tag, ts, record)
--Normalize Fields--
  record.id=record.uid
  record.gacha_id=string.match(tostring(record.gachaId),'([^%.]+)')
  record.gacha_type=string.match(tostring(record.gachaType),'([^%.]+)')
  record.item_id=string.match(tostring(record.itemId),'([^%.]+)')
  record.rank_type=string.match(tostring(record.rarity),'([^%.]+)')
  record.uid="<insert your uid here>"
  if record.itemId >= 20000 then
    record.item_type="Light Cone"
  else
    record.item_type="Character"
  end
--Data Enrichment--
  --3 Star Light Cones--
  if record.item_id=="20000" then record.name="Arrows" end
  if record.item_id=="20001" then record.name="Cornucopia" end
  if record.item_id=="20002" then record.name="Collapsing Sky" end
  if record.item_id=="20003" then record.name="Amber" end
  if record.item_id=="20004" then record.name="Void" end
  if record.item_id=="20005" then record.name="Chorus" end
  if record.item_id=="20006" then record.name="Data Bank" end
  if record.item_id=="20007" then record.name="Darting Arrow" end
  if record.item_id=="20008" then record.name="Fine Fruit" end
  if record.item_id=="20009" then record.name="Shattered Home" end
  if record.item_id=="20010" then record.name="Defense" end
  if record.item_id=="20011" then record.name="Loop" end
  if record.item_id=="20012" then record.name="Meshing Cogs" end
  if record.item_id=="20013" then record.name="Passkey" end
  if record.item_id=="20014" then record.name="Adversarial" end
  if record.item_id=="20015" then record.name="Multiplication" end
  if record.item_id=="20016" then record.name="Mutual Demise" end
  if record.item_id=="20017" then record.name="Pioneering" end
  if record.item_id=="20018" then record.name="Hidden Shadow" end
  if record.item_id=="20019" then record.name="Mediation" end
  if record.item_id=="20020" then record.name="Sagacity" end
  --4 Star Light Cones--
  if record.item_id=="21000" then record.name="Post-Op Conversation" end
  if record.item_id=="21001" then record.name="Good Night and Sleep Well" end
  if record.item_id=="21002" then record.name="Day One of My New Life" end
  if record.item_id=="21003" then record.name="Only Silence Remains" end
  if record.item_id=="21004" then record.name="Memories of the Past" end
  if record.item_id=="21005" then record.name="The Moles Welcome You" end
  if record.item_id=="21006" then record.name="The Birth of The Self" end
  if record.item_id=="21007" then record.name="Shared Feeling" end
  if record.item_id=="21008" then record.name="Eyes of Prey" end
  if record.item_id=="21009" then record.name="Landau's Choice" end
  if record.item_id=="21010" then record.name="Swordplay" end
  if record.item_id=="21011" then record.name="Planetary Rendezvous" end
  if record.item_id=="21012" then record.name="A Secret Vow" end
  if record.item_id=="21013" then record.name="Make the World Clamor" end
  if record.item_id=="21014" then record.name="Perfect Timing" end
  if record.item_id=="21015" then record.name="Resolution Shines As Pearls of Sweat" end
  if record.item_id=="21016" then record.name="Trend of the Universal Market" end
  if record.item_id=="21017" then record.name="Subscribe for More!" end
  if record.item_id=="21018" then record.name="Dance! Dance! Dance!" end
  if record.item_id=="21019" then record.name="Under the Blue Sky" end
  if record.item_id=="21020" then record.name="Geniuses' Repose" end
  if record.item_id=="21042" then record.name="Indelible Promise" end
  if record.item_id=="21043" then record.name="Concert for Two" end
  if record.item_id=="21046" then record.name="Poised to Bloom" end
  --5 Star Light Cones--
  if record.item_id=="23000" then record.name="Night on the Milky Way" end
  if record.item_id=="23002" then record.name="Something Irreplaceable" end
  if record.item_id=="23004" then record.name="In The Name of the World" end
  if record.item_id=="23005" then record.name="Moment of Victory" end
  if record.item_id=="23006" then record.name="Patience Is All You Need" end
  if record.item_id=="23007" then record.name="Incessant Rain" end
  if record.item_id=="23011" then record.name="She Already Shut Her Eyes" end
  if record.item_id=="23012" then record.name="Sleep Like The Dead" end
  if record.item_id=="23022" then record.name="Reforged Remembrance" end
  if record.item_id=="23024" then record.name="Along the Passing Shore" end
  if record.item_id=="23025" then record.name="Whereabouts Should Dreams Rest" end
  if record.item_id=="23030" then record.name="Dance at Sunset" end
  --4 & 5 Star Characters--
  if record.item_id=="1001" then record.name="March 7th" end
  if record.item_id=="1002" then record.name="Dan Heng" end
  if record.item_id=="1003" then record.name="Himeko" end
  if record.item_id=="1004" then record.name="Welt" end
  if record.item_id=="1005" then record.name="Kafka" end
  if record.item_id=="1006" then record.name="Silver Wolf" end
  if record.item_id=="1008" then record.name="Arlan" end
  if record.item_id=="1009" then record.name="Asta" end
  if record.item_id=="1013" then record.name="Herta" end
  if record.item_id=="1101" then record.name="Bronya" end
  if record.item_id=="1102" then record.name="Seele" end
  if record.item_id=="1103" then record.name="Serval" end
  if record.item_id=="1104" then record.name="Gepard" end
  if record.item_id=="1105" then record.name="Natasha" end
  if record.item_id=="1106" then record.name="Pela" end
  if record.item_id=="1107" then record.name="Clara" end
  if record.item_id=="1108" then record.name="Sampo" end
  if record.item_id=="1109" then record.name="Hook" end
  if record.item_id=="1110" then record.name="Lynx" end
  if record.item_id=="1111" then record.name="Luka" end
  if record.item_id=="1112" then record.name="Topaz & Numby" end
  if record.item_id=="1201" then record.name="Qingque" end
  if record.item_id=="1202" then record.name="Tingyun" end
  if record.item_id=="1203" then record.name="Luocha" end
  if record.item_id=="1205" then record.name="Blade" end
  if record.item_id=="1206" then record.name="Shushang" end
  if record.item_id=="1207" then record.name="Yukong" end
  if record.item_id=="1208" then record.name="Fu Xuan" end
  if record.item_id=="1210" then record.name="Guinaifen" end
  if record.item_id=="1211" then record.name="Bailu" end
  if record.item_id=="1214" then record.name="Xueyi" end
  if record.item_id=="1215" then record.name="Hanya" end
  if record.item_id=="1217" then record.name="Huohuo" end
  if record.item_id=="1220" then record.name="Fei Xiao" end
  if record.item_id=="1222" then record.name="Lingsha" end
  if record.item_id=="1223" then record.name="Moze" end
  if record.item_id=="1301" then record.name="Gallagher" end
  if record.item_id=="1302" then record.name="Argenti" end
  if record.item_id=="1303" then record.name="Ruan Mei" end
  if record.item_id=="1304" then record.name="Aventurine" end
  if record.item_id=="1306" then record.name="Sparkle" end
  if record.item_id=="1307" then record.name="Black Swan" end
  if record.item_id=="1308" then record.name="Acheron" end
  if record.item_id=="1310" then record.name="Firefly" end
  if record.item_id=="1312" then record.name="Misha" end
  if record.item_id=="1314" then record.name="Jade" end
--Remove Unwanted Fields--
  record.itemId=nil
  record.gachaType=nil
  record.gachaId=nil
  record.rarity=nil
  record.manual=nil
  record.anchorItemId=nil
  record.sort=nil
  return 1, ts, record
end
