local Keys = {
	["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
	["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
	["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
	["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
	["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
	["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
	["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
	["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
	["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}

ESX                           = nil
local dict = "anim@mp_player_intmenu@key_fob@"

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

end)



Citizen.CreateThread(function()
  while true do
    Citizen.Wait(0)
	if (IsControlJustPressed(1, Keys['U'])) then
		local coords = GetEntityCoords(GetPlayerPed(-1))
		local hasAlreadyLocked = false
		cars = ESX.Game.GetVehiclesInArea(coords, 30)
		local carstrie = {}
		local cars_dist = {}		
		notowned = 0
		if #cars == 0 then
			ESX.ShowNotification("Kein Fahrzeug gefunden.")
		else
			for j=1, #cars, 1 do
				local coordscar = GetEntityCoords(cars[j])
				local distance = Vdist(coordscar.x, coordscar.y, coordscar.z, coords.x, coords.y, coords.z)
				if distance < 15.0 then
					table.insert(cars_dist, {cars[j], distance})
				end
			end
			for k=1, #cars_dist, 1 do
				local z = -1
				local distance, car = 999
				for l=1, #cars_dist, 1 do
					if cars_dist[l][2] < distance then
						distance = cars_dist[l][2]
						car = cars_dist[l][1]
						z = l
					end
				end
				if z ~= -1 then
					table.remove(cars_dist, z)
					table.insert(carstrie, car)
				end
			end
			for i=1, #carstrie, 1 do
				local plate = ESX.Math.Trim(GetVehicleNumberPlateText(carstrie[i]))   
				ESX.TriggerServerCallback('carlock:isVehicleOwner', function(owner)
					if owner then
						toggleField(true)
					end
				end, plate)
			end			
		end
	end
  end
end)

RegisterNUICallback('lock', function(data, cb)

	toggleField(false)

	local coords = GetEntityCoords(GetPlayerPed(-1))
	local vehicle = ESX.Game.GetClosestVehicle(coords)
	local vehicleLabel = GetDisplayNameFromVehicleModel(GetEntityModel(vehicle))
	vehicleLabel = GetLabelText(vehicleLabel)
	
	SetVehicleDoorShut(vehicle, 0, false)
	SetVehicleDoorShut(vehicle, 1, false)
	SetVehicleDoorShut(vehicle, 2, false)
	SetVehicleDoorShut(vehicle, 3, false)
	SetVehicleDoorsLocked(vehicle, 2)
	TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 10, "lock", 1.0)
	ESX.ShowNotification('Fahrzeug abgeschlossen:  '..vehicleLabel.. '')

	RequestAnimDict(dict)
	while not HasAnimDictLoaded(dict) do
		Citizen.Wait(100)
	end

	TaskPlayAnim(GetPlayerPed(-1), dict, "fob_click_fp", 8.0, 8.0, -1, 48, 1, false, false, false)
	
    cb('ok')
end)

RegisterNUICallback('unlock', function(data, cb)

	toggleField(false)

	local coords = GetEntityCoords(GetPlayerPed(-1))
	local vehicle = ESX.Game.GetClosestVehicle(coords)
	local vehicleLabel = GetDisplayNameFromVehicleModel(GetEntityModel(vehicle))
	vehicleLabel = GetLabelText(vehicleLabel)

	SetVehicleDoorsLocked(vehicle, 1)
	TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 10, "unlock", 1.0)
	ESX.ShowNotification('Fahrzeug aufgeschlossen:  '..vehicleLabel.. '')
	hasAlreadyLocked = true
	RequestAnimDict(dict)
	while not HasAnimDictLoaded(dict) do
		Citizen.Wait(100)
	end
								
	TaskPlayAnim(GetPlayerPed(-1), dict, "fob_click_fp", 8.0, 8.0, -1, 48, 1, false, false, false)
	
    cb('ok')
end)

local locked = 0

RegisterNUICallback('trunk', function(data, cb)

	toggleField(false)

	local coords = GetEntityCoords(GetPlayerPed(-1))
	local vehicle = ESX.Game.GetClosestVehicle(coords)
	local vehicleLabel = GetDisplayNameFromVehicleModel(GetEntityModel(vehicle))
	vehicleLabel = GetLabelText(vehicleLabel)

	if locked == 0 then
		SetVehicleDoorOpen(vehicle, 5, false, false)
		TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 10, "unlock", 1.0)
		ESX.ShowNotification('Kofferraum geöffnet:  '..vehicleLabel.. '')
		hasAlreadyLocked = true
		RequestAnimDict(dict)
		while not HasAnimDictLoaded(dict) do
			Citizen.Wait(100)
		end
		locked = 1					
		TaskPlayAnim(GetPlayerPed(-1), dict, "fob_click_fp", 8.0, 8.0, -1, 48, 1, false, false, false)
	else
		SetVehicleDoorShut(vehicle, 5, false)
		TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 10, "unlock", 1.0)
		ESX.ShowNotification('Kofferraum geschlossen:  '..vehicleLabel.. '')
		hasAlreadyLocked = true
		RequestAnimDict(dict)
		while not HasAnimDictLoaded(dict) do
			Citizen.Wait(100)
		end
		locked = 0				
		TaskPlayAnim(GetPlayerPed(-1), dict, "fob_click_fp", 8.0, 8.0, -1, 48, 1, false, false, false)
	end

    cb('ok')
end)

RegisterNUICallback('escape', function(data, cb)
	toggleField(false)
end)

local enableField = false

function toggleField(enable)

  SetNuiFocus(enable, enable)
  enableField = enable

  SendNUIMessage({

    type = "enableui",
    enable = enable

  })

end

RegisterNUICallback('escape', function(data, cb)

    toggleField(false)
    SetNuiFocus(false, false)


    cb('ok')
end)

AddEventHandler('onResourceStop', function(resourceName)
	if (GetCurrentResourceName() ~= resourceName) then
	  return
	end
	
	toggleField(false)
  end)