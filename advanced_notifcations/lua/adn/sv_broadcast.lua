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

function AdvancedNotify:Broadcast( ply , main_color, header_text, main_text)
    net.Start("AdvancedNotify.Broadcast")
    net.WriteString(main_color or Color(255,0,0))
    net.WriteString(header_text or "AdvancedNotify")
    net.WriteString(main_text or "No Text given...")
    net.Send(ply)
end
