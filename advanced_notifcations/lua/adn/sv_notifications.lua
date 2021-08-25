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
  
  File: sv_notifications.lua

]]--

util.AddNetworkString("AdvancedNotify.Notify")

function AdvancedNotify:Notify(ply, type, header, text)
    net.Start("AdvancedNotify.Notify")
    net.WriteString(type or Color(255,0,0))
    net.WriteString(header or "AdvancedNotify")
    net.WriteString(text or "No Text given...")
    net.Send(ply)
end

concommand.Add("hudpopup", function()
  AdvancedNotify:Notify(Color(255,0,0),  "Advanced Notifications", "Some Text...")
end)



