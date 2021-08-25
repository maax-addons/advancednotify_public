////////////////////////////////////////
//       Advanced Notifications       //
//          Coded by: Maax            //
//                                    //
//      Version: v1.0 (Workshop)      //
//                                    //
//      You are not permitted to      //
//        reupload this Script!       //
//                                    //
////////////////////////////////////////

--[[
  
  File: sh_init.lua

]]--


AdvancedNotify = AdvancedNotify or {}

local dir = "adn"

local v = "v1.0"

function AdvancedNotify.Print(text)
     MsgC(  Color(255,0,0) "[Advanced Notify - ", v, "] ", Color(255,255,255), text, "\n")
end

function AdvancedNotify:NotifyPrint(type, header, text_)
    MsgC( type, "[Notfiy - "..header.. "] ", Color(255,255,255), text_ ,"\n")
end

function AdvancedNotify:BroadcastPrint(type, header, text_)
    MsgC( type, "[Broadcast - "..header.. "] ", Color(255,255,255), text_ ,"\n")
end


if SERVER then
    
    AddCSLuaFile(dir..'cl_broadcast.lua')
    AddCSLuaFile(dir..'cl_handler.lua')
    AddCSLuaFile(dir..'cl_fonts.lua')
    AddCSLuaFile(dir..'cl_notifications.lua')
    AddCSLuaFile(dir..'cl_util.lua')
    AddCSLuaFile(dir..'sh_config.lua')
    
    AdvancedNotify.Print("Starting UP.. \n Coded by: Maax")
    AdvancedNotify.Print("Loading Config...")
        include(dir..'sh_config.lua')
    AdvancedNotify.Print("Config loaded!")

    AdvancedNotify.Print("Loading Serverside...")
    AdvancedNotify.Print("Includeing File: sv_broadcast.lua")
       include(dir..'sv_broadcast.lua')
    AdvancedNotify.Print("Includeing File: sv_notifications.lua")
       include(dir..'sv_notifications.lua')
    AdvancedNotify.Print("Serverside loaded!")

else

    AdvancedNotify.Print("Starting UP.. \n Coded by: Maax")
    AdvancedNotify.Print("Loading Config...")
        include(dir..'sh_config.lua')
    AdvancedNotify.Print("Config loaded!")
    AdvancedNotify.Print("Loading Clientside...")
    AdvancedNotify.Print("Includeing File: cl_broadcast.lua")
        include(dir..'cl_broadcast.lua')
    AdvancedNotify.Print("Includeing File: cl_handler.lua")
        include(dir..'cl_handler.lua')
    AdvancedNotify.Print("Includeing File: cl_notifications.lua")
        include(dir..'cl_notifications.lua')
    AdvancedNotify.Print("Includeing File: cl_util.lua")
        include(dir..'cl_util.lua')
    AdvancedNotify.Print("Includeing File: cl_fonts.lua")
        include(dir..'cl_fonts.lua')
    AdvancedNotify.Print("Clientside loaded!")

end


