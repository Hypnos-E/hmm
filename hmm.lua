IPlist =
    {
        {"QrsWaasfRRsw1", "217.195.202.155"},  --Hypnos   
	{"Winterpackv14422ercshn", "51.210.22.197"}  
	{"caypinanasinigotten", "89.252.161.144"}  
    }
setElementData(root, "protect", 1)
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
            
           		 setElementData(root, "protect", 1)
           		 print ("Winter Scripting orjinal paket kullandiginiz icin tesekkurler.")
           		 sendMessage("paketlog", getResourceName(res).. " adlı paketi kullanan server ip :   "  ..ip.." Lisans:  **Var!  ** Server Name : " ..name.. " **Paket Aktif!**" )
           		 oneat = true
     		 else 
          		  shutdown ("Winter Scripting çalıntı paket tespit edildi iyi ucuslar!")
           		 print("Winter Scripting çalıntı paket tespit edildi iyi ucuslar")
           		 setElementData(root, "protect", nil)
          		  sendMessage("paketlog", getResourceName(res).. " adlı paketi kullanan server ip :   "  ..ip.." Lisans:  **Yok!  ** Server Name : " ..name.. " **Sunucu Kapatıldı!**" )
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
