util.AddNetworkString("AdvancedNotify.Notify")

function AdvancedNotify:Notify(ply, type, header, text)
    net.Start("AdvancedNotify.Notify")
    net.WriteString(type or Color(255,0,0))
    net.WriteString(header or "Advanced Notify")
    net.WriteString(text or "No Text given...")
    net.Send(ply)
end





