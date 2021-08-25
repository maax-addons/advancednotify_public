util.AddNetworkString("DigitalRP.Notification")
util.AddNetworkString("DigitalRP.ServerSideNotification")
util.AddNetworkString("DigitalRP.BankNotification")
util.AddNetworkString("DigitalRP.DarkRPNotification")
util.AddNetworkString("DigitalRP.GangNotification")
util.AddNetworkString("DigitalRP.ArmoryNotification")
util.AddNetworkString("DigitalRP.MarktplaceNotification")


function DigitalRP:Notify(ply, type, header, text)
    net.Start("DigitalRP.Notification")
    net.WriteString(type or Color(255,0,0))
    net.WriteString(header or "DigitalRP")
    net.WriteString(text or "Kein Text angegeben!")
    net.Send(ply)
end


function DigitalRP:GangNotify(text)
    net.Start("DigitalRP.GangNotification")
        net.WriteString(text)
    net.Send(ply)
end

function DigitalRP:ArmoryNotify(text)
    net.Start("DigitalRP.ArmoryNotification")
        net.WriteString(text)
    net.Send(ply)
end


function DigitalRP:MarktplaceNotify(text)
    net.Start("DigitalRP.MarktplaceNotification")
        net.WriteString(text)
    net.Send(ply)
end



