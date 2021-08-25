////////////////////////////////////////
//       Advanced Notifications       //
//          Coded by: Maax            //
//                                    //
//      Version: v1.0 (GitHub)        //
//                                    //
//      You are not permitted to      //
//        reupload this Script!       //
//                                    //
////////////////////////////////////////

--[[
  
  File: sv_broadcast.lua

]]--


util.AddNetworkString("AdvancedNotify.Broadcast")

function AdvancedNotify:Broadcast(ply, type, header, text)
    net.Start("AdvancedNotify.Broadcast")
    net.WriteString(type or Color(255,0,0))
    net.WriteString(header or "AdvancedNotify")
    net.WriteString(text or "No Text given...")
    net.Send(ply)
end


concommand.Add("hudpopup", function()
  AdvancedNotify:Broadcast(Color(255,0,0),  "Advanced Notifications", "Some Text...")
end)
