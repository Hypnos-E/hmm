IPlist =
    {
        {"QrsWaasfRRsw", "89.252.161.144"},  --CAYP LOCAL      
        {"QrsWasAlchera", "213.226.199.27"}, --Alchare Roleplay --McDonald's --PD DIŞ --İsbankasiATM --LQ Ron GS
        {"QrsWassSekiz", "213.202.223.132"}, --Sekiz Roleplay --MD İnterior --Tabela 
        {"QrWADSQuenns", "217.195.197.80"},  --Queen Roleplay --MD DIŞ  
        {"WdawdWValexx", "185.103.199.139"}, --Valex Roleplay --LQ Ron Gas Station 
        {"WdawdaAnchor", "193.31.118.14"},   --Anchor Roleplay --McDonald's                                 
        {"SAshHReinarp", "213.142.156.142"}, --Reina Rolepaly --PD DIŞ  
        {"WDsodkawdWda", "51.210.22.206"},   --Bedellin Roleplay --LQ Ron Gas Station --KVP İNT --OCAK İNT    
        {"HydraWADSPsh", "40.121.84.120"},   --Hydra Roleplay --Acibadem Hastanesi  
        {"ZionAWDsowIs", "213.32.61.83"},    --Zion Roleplay --McDonald's --İsbankasiATM --MD DIŞ --PD DIŞ 
        {"cCcTuranRPIS", "54.36.0.87"},      --Turan Roleplay --TÜM OBJELER AMK
        {"NicerpĞWAOKD", "217.195.197.63"},  --Nice Roleplay --McDonald's --İsbankasiATM    
        {"AnonyĞDKWSĞP", "51.178.185.69"},   --AnonyTurks Roleplay --MD İNT --PD DIŞ
        {"AsperaAwosd1", "89.252.161.135"},  --Aspera Roleplay --İsbankasiATM --PD DIŞ  
        {"Venz1d0wjdi1", "217.195.197.119"}, --VenzMTA --MC 
        {"VenomWISJD12", "176.98.41.19"},    --Venom Roleplay --BUĞRA
    }
oneat = nil
function Magic(res)
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
            
           		 setElementData(root, "setElementData", 1)
           		 print ("Winter Scripting orjinal paket kullandiginiz icin tesekkurler.")
           		 sendMessage("paketlog", getResourceName(res).. " adlı paketi kullanan server ip :   "  ..ip.." Lisans:  **Var!  ** Server Name : " ..name.. " **Paket Aktif!**" )
           		 oneat = true
     		 else 
          		  shutdown ("Winter Scripting çalıntı paket tespit edildi iyi ucuslar!")
           		 print("Winter Scripting çalıntı paket tespit edildi iyi ucuslar")
           		 setElementData(root, "setElementData", nil)
          		  sendMessage("paketlog", getResourceName(res).. " adlı paketi kullanan server ip :   "  ..ip.." Lisans:  **Yok!  ** Server Name : " ..name.. " **Sunucu Kapatıldı!**" )
        	  end
    else 
         print("Sistem kendini güncelliyor 2 dakika sonra restart atın!")
    end
    end)    
end
addEventHandler ( "onResourceStart", getRootElement(), Magic )
Webhooks = {
    ["paketlog"] = {
        link = "https://discord.com/api/webhooks/834532433973477428/5ZNpYAUN33fvxShrnbKWDeWnfwagZs4sVFxEGAGfiQPQ7quQOAHQLLlp3rVlaIJ6cL0i",
        avatar = "https://i.resimyukle.xyz/O1zJST.png", -- if u want to empty, enter nil
        username = "LİSANS"
    }
    
}
