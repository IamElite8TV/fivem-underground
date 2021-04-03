local blips = {

     {title="Central Medical Center", colour=2, id=61, x = 305.93, y = -1443.36, z = 28.8},
     {title="Vespucci Police Department", colour=29, id=60, x = -1091.66, y = -832.14, z = 19.0},
     {title="Crafting", colour=29, id=402, x = 484.31, y = -3065.68, z = 17.09},
     {title="IKEA/You Tool", colour=0, id=539, x = 2733.47, y = 3480.46, z = 17.09},
     {title="Taxizentrale", colour=5, id=56, x = 892.96, y = -162.31, z = 76.89},
  }
      
Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 1.0)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)