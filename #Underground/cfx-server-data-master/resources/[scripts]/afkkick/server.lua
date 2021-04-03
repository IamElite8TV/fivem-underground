RegisterServerEvent("kickForBeingAnAFKDouchebag")
AddEventHandler("kickForBeingAnAFKDouchebag", function()
	DropPlayer(source, "Du wurdest vom Server gekickt weil du 15 Minuten AFK warst!")
end)