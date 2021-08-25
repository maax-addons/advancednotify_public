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
  
  File: cl_notifications.lua

]]--

function AdvancedNotify:Notify( main_color , header_text , main_text )

    local background = Color(24, 24, 24,245)
    local type_color = main_color or Color(255, 0, 0)
    local value_head = header_text or ""
    local value_text = main_text or ""

    self = vgui.Create("DPanel")
    self:SetPos(ScrW() * 0.74, ScrH() * 0.86)
    self:SetSize(ScrW() * 0.25, ScrH() * 0.1)
    self:SetDrawOnTop(true)
    self:SetAlpha(0)
    self:AlphaTo(255, 0.75, 0)
    self:AlphaTo(0, 0.75, 4.5 + 0.75)
    function self:Paint(w, h)
            draw.RoundedBox(6, 0, 0, w, h, background)
            draw.RoundedBoxEx(0, 0, 0, w, 7, type_color, true, true, false, false)
            draw.DrawText(header, "AdvancedNotify.NotifyHead", w * .01, h * .01 + 4, type_color, TEXT_ALIGN_LEFT)
    end

    self.richtext = vgui.Create("RichText", self)
    self.richtext:Dock(FILL)
    self.richtext:DockMargin(2,35,10,10)
    self.richtext:AppendText(value)
    self.richtext:SetVerticalScrollbarEnabled(false)
    function self.richtext:PerformLayout()
        self:SetFontInternal("AdvancedNotify.NotifyText")
    end

    timer.Simple(6, function()
        self:Remove()
    end)
    
    AdvancedNotify:NotifyPrint(type, header, text_)
end


net.Receive("AdvancedNotify.Notify", function(len)
    AdvancedNotify:Notify(net.ReadString(), net.ReadString(), net.ReadString())
end)
