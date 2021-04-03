ESX = nil
Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    end
end)

RegisterNetEvent('cosasvariadas:kevlar')
AddEventHandler('cosasvariadas:kevlar', function()

    local playerPed = PlayerPedId()

    AddArmourToPed(playerPed,100)
    SetPedArmour(playerPed, 100)

end)


RegisterNetEvent('cosasvariadas:useItem')
AddEventHandler('cosasvariadas:useItem', function(itemName)
	ESX.UI.Menu.CloseAll()

	if itemName == 'kevlar' then
		local lib, anim = 'anim@heists@narcotics@funding@gang_idle', 'gang_chatting_idle01' -- TODO better animations
		local playerPed = PlayerPedId()

		ESX.Streaming.RequestAnimDict(lib, function()
			TaskPlayAnim(playerPed, lib, anim, 8.0, -8.0, -1, 0, 0, false, false, false)

			Citizen.Wait(500)
			while IsEntityPlayingAnim(playerPed, lib, anim, 3) do
				Citizen.Wait(0)
				DisableAllControlActions(0)
			end
	
			ESX.ShowNotification(_U('used_´kelvar'))
        end)
    end
end)