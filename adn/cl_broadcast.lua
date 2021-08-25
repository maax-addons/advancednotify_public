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
  
  File: cl_broadcast.lua

]]--


function AdvancedNotify:Broadcast(type, header, text_)

    self = vgui.Create("DNotify")
    self:SetPos(ScrW()/4.0, ScrH() /6.1)
    self:SetSize(ScrW() / 2, 140)
    self.Paint = function(self,w,h)
    end

    local bg = vgui.Create("DPanel", self)
    bg:Dock(FILL)
    bg.Paint = function(self,w,h)
          draw.RoundedBoxEx(9, 0, 0, w,h, DigitalRP:GetColor("greyalpha"), false, false, true, true)
          draw.RoundedBoxEx(0, 0, 0, w,7, type, false, false, true, true)

          draw.DrawText(header, "AdvancedNotify.PopUPHead", self:GetWide() / 2, 10, type, TEXT_ALIGN_CENTER)
          draw.DrawText( text_, "AdvancedNotify.PopUPText", self:GetWide() / 2, self:GetTall() / 1.7, DigitalRP:GetColor("white"), TEXT_ALIGN_CENTER)
    end

    self:AddItem(bg)
    
    AdvancedNotify:BroadcastPrint(type, header, text_)
end

net.Receive("AdvancedNotify.Broadcast", function(len)
    AdvancedNotify:Broadcast(net.ReadString(), net.ReadString(), net.ReadString())
end)


