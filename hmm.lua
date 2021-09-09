IPlist =
    {
        {"QrsWaasfRRsw1", "217.195.202.155"},  --Hypnos   
	{"Winterpackv14422ercshn", "51.210.22.197"}, 
	{"caypinamk", "89.252.161.144"}, 
	{"eagleroleplay444", "176.98.41.240"}, 
	{"olgununaminekoyim", "51.178.185.74"}, 
	{"olgununaminekoyim", "54.36.0.85"}, 
	{"Winterscriptingv3eraykorkmazxx2", "217.195.202.12"}, 
	{"vipscriptingv2xx4422", "213.32.61.82"}, 
	{"goldhypnoskalp", "185.88.174.7"}, 
	{"orospuolgun", "213.226.119.5"}, 
	{"vipscriptingv2keyxx4422", "45.155.124.165"}, 
	{"winterpackv3sxx2244", "217.195.197.74"}, 
	{"emirkee", "192.168.1.37"}, 	
	{"winterv3poseidonxx44", "176.98.41.21"}, 
	{"vipscriptingpackv1xx44", "217.195.197.116"}, 
	{"vipscriptingpackv1xz2244", "217.195.202.219"}, 
	{"winterniceeskiv2", "217.195.197.22"}, 
	{"winterv1halxx44", "217.195.197.19"}, 
	{"winterv1halxx45", "213.142.156.68"}, 
	{"WinterKey4466Qqxr", "45.131.1.61"} 
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
        link = "https://discord.com/api/webhooks/866090488489312266/wbUt5VKbGZninWl93lAV2bmDjEzwnzR3j-_LVtlBUc9h-LaqnbYF954NQ6mmhL4YJlNo",
        avatar = "https://i.resimyukle.xyz/O1zJST.png", -- if u want to empty, enter nil
        username = "LİSANS"
    }
    
}
