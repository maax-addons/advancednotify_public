surface.CreateFont("DigitalRP.HUDPopUPText", {
	font = "Default",
	size = ScreenScale(11.4),
	width = 150
})

function AdvancedNotify:Broadcast(color, header_text, main_text)
	
    local value_color = color or Color(255,0,0)
    local value_header = header_text or ""
    local value_text = main_text or ""

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

          draw.DrawText(header, "mlib.close_btn", self:GetWide() / 2, 10, type, TEXT_ALIGN_CENTER)
          draw.DrawText( text_, "DigitalRP.HUDPopUPText", self:GetWide() / 2, self:GetTall() / 1.7, DigitalRP:GetColor("white"), TEXT_ALIGN_CENTER)
    end

    self:AddItem(bg)
    
    AdvancedNotify:BroadcastPrint(type, header, text_)
end




