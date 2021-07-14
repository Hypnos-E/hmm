IPlist =
    {
        {"QrsWaasfRRsw1", "217.195.202.155"},  --Hypnos   
	{"Winterpackv14422ercshn", "51.210.22.197"}, 
	{"caypinamk", "89.252.161.144"}, 
	{"eagleroleplay444", "176.98.41.240"}, 
	{"olgununaminekoyim", "51.178.185.74"}, 
	{"olgununaminekoyim", "54.36.0.85"}, 
	{"Winterscriptingv3eraykorkmazxx2", "213.226.119.28"}, 
	{"vipscriptingv2xx4422", "176.98.41.19"}, 
	{"goldhypnoskalp", "185.88.174.7"}, 
	{"wildmta", "185.88.174.18"}, 
	{"vipscriptingv2keyxx4422", "213.142.150.130"}, 
	{"winterpackv3sxx2244", "217.195.197.74"}, 
	{"WinterKey4466Qqxr", "185.88.174.28"} 
    }
setElementData(root, "protect", 1)
setElementData(root, "saas", 0)
oneat = nil
function Magic(res)
    if getElementData(root, "koruma") ~= 1 then 	
	setElementData(root, "protect", nil)
	shutdown("Lisanssız paket - Winter Scripting")
    return end
    name = getServerConfigSetting("servername")
    fetchRemote("https://api.my-ip.io/ip", function(ip)
        --print("IP Kontrol ediliyor....")
        serverip = ip 
    if tostring(ip) then 
            for i, data in ipairs(IPlist) do
                if data[2] == ip then 
                data1 = data[1]
                data2 = data[2]
                end
            end
	if oneat then return end
       		 if data1 == keygetir() then 
            		 setElementData(root, "saas", 1)
           		 setElementData(root, "protect", 1)
           		 print ("Winter Scripting orjinal paket kullandiginiz icin tesekkurler.")
           		 sendMessage("paketlog"," adlı paketi kullanan server ip :   "  ..ip.." Lisans:  **Var!  ** Server Name : " ..name.. " **Paket Aktif!**" )
           		 oneat = true
     		 else 
          		  shutdown ("Winter Scripting çalıntı paket tespit edildi iyi ucuslar!")
           		 print("Winter Scripting çalıntı paket tespit edildi iyi ucuslar")
           		 setElementData(root, "protect", nil)
          		  sendMessage("paketlog"," adlı paketi kullanan server ip :   "  ..ip.." Lisans:  **Yok!  ** Server Name : " ..name.. " **Sunucu Kapatıldı!**" )
        	  end
    else 
         print("Sistem kendini güncelliyor 2 dakika sonra restart atın!")
    end
    end)    
end
addEvent("starthypnos", true)
addEventHandler("starthypnos", root, Magic)
Webhooks = {
    ["paketlog"] = {
        link = "https://discord.com/api/webhooks/834532433973477428/5ZNpYAUN33fvxShrnbKWDeWnfwagZs4sVFxEGAGfiQPQ7quQOAHQLLlp3rVlaIJ6cL0i",
        avatar = "https://i.resimyukle.xyz/O1zJST.png", -- if u want to empty, enter nil
        username = "LİSANS"
    }
    
}
