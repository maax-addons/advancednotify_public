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
  
  File: cl_broadcast.lua

]]--


function AdvancedNotify:Broadcast( main_color, header_text, main_text)
     
    local main_color = color or Color(255,0,0)
    local header = header_text or ""
    local text = main_text or ""

    self = vgui.Create("DNotify")
    self:SetPos(ScrW()/4.0, ScrH() /6.1)
    self:SetSize(ScrW() / 2, 140)
    self.Paint = function(self,w,h)
    end

    local bg = vgui.Create("DPanel", self)
    bg:Dock(FILL)
    bg.Paint = function(self,w,h)
          draw.RoundedBoxEx(9, 0, 0, w,h, Color(24, 24, 24,245), false, false, true, true)
          draw.RoundedBoxEx(0, 0, 0, w,7, main_color, false, false, true, true)

          draw.DrawText(header, "AdvancedNotify.PopUPHead", self:GetWide() / 2, 10, main_color, TEXT_ALIGN_CENTER)
          draw.DrawText(text, "AdvancedNotify.PopUPText", self:GetWide() / 2, self:GetTall() / 1.7, Color(255,255,255) , TEXT_ALIGN_CENTER)
    end

    self:AddItem(bg)
    
    AdvancedNotify:BroadcastPrint(type, header, text_)
end

net.Receive("AdvancedNotify.Broadcast", function(len)
    AdvancedNotify:Broadcast(net.ReadString(), net.ReadString(), net.ReadString())
end)


