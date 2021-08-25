function DigitalRP.SuccessPrint(...)
	MsgC(Color(225, 20, 30), "[Digital Gaming Framework] ", Color(101, 190, 0), ..., "\n\r")
end

function DigitalRP.NotifyNoPermisson()
	DigitalRP:Notify(DigitalRP:GetColor("red"),DigitalRP:GetText("notification_nopermisson_header"),DigitalRP:GetText("notification_nopermisson_text"))
end


net.Receive("DigitalRP.Notification", function(len)
    DigitalRP:Notify(net.ReadString(), net.ReadString(), net.ReadString())
end)

net.Receive("DigitalRP.ServerSideNotification", function(len)
    DigitalRP:Notify(net.ReadString(), net.ReadString(), net.ReadString())
end)

net.Receive("DigitalRP.BankNotification", function(len)
    DigitalRP:Notify(DigitalRP:GetColor("blue"), "Bank", net.ReadString())
end)

net.Receive("DigitalRP.SewpUpgraderNotification", function(len)
    DigitalRP:Notify(DigitalRP:GetColor("red"), "SWEP Upgrader", net.ReadString())
end)

net.Receive("DigitalRP.DeathscreenNotification", function(len)
    DigitalRP:Notify(DigitalRP:GetColor("cyan"), "Deathscreens", net.ReadString())
end)

net.Receive("DigitalRP.CraftingNotification", function(len)
    DigitalRP:Notify(DigitalRP:GetColor("cyan"), "Crating-System", net.ReadString())
end)

net.Receive("DigitalRP.InventoryNotification", function(len)
    DigitalRP:Notify(DigitalRP:GetColor("blueDark"), "Inventar", net.ReadString())
end)


net.Receive("DigitalRP.DarkRPNotification", function(len)
    DigitalRP:Notify(DigitalRP:GetColor("red"), "PrisonRP", net.ReadString())
end)

net.Receive("DigitalRP.GangNotification", function(len)
    DigitalRP:Notify(DigitalRP:GetColor("yellow"), "Gang-System", net.ReadString())
end)


net.Receive("DigitalRP.ArmoryNotification", function(len)
    DigitalRP:Notify(DigitalRP:GetColor("cyan"), "Waffenschrank", net.ReadString())
end)

net.Receive("DigitalRP.AuctionNotification", function(len)
    DigitalRP:Notify(DigitalRP:GetColor("cyan"), "Auktions System", net.ReadString())
end)

net.Receive("DigitalRP.MarktplaceNotification", function(len)
    DigitalRP:Notify(DigitalRP:GetColor("cyan"), "Marktplatz", net.ReadString())
end)
