local ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj  end)

ESX.RegisterServerCallback("Admin:getRankFromPlayer", function(source, cb)
    local player = ESX.GetPlayerFromId(source)

    if player ~= nil then
        local playerGroup = player.getGroup()

        if playerGroup ~= nil then 
            cb(playerGroup)
        else
            cb("user")
        end
    else
        cb("user")
    end
end)

TriggerEvent("es:addGroupCommand", "asduty", "mod", function(source, args)
    TriggerClientEvent("togglesduty", source)
end, function(source, args)
	TriggerClientEvent("chatMessage", source, "🤖^7» ^8Support ^7| You have no rights ^7.")
end)