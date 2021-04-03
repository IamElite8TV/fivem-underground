Config                            = {}
Config.DrawDistance               = 50.0
Config.MarkerColor                = { r = 255, g = 0, b = 0 }
Config.EnableOwnedVehicles        = true
Config.ResellPercentage           = 75

Config.Locale                     = 'en'

Config.LicenseEnable = false -- require people to own drivers license when buying vehicles? Only applies if EnablePlayerManagement is disabled. Requires esx_license

-- looks like this: 'LLL NNN'
-- The maximum plate length is 8 chars (including spaces & symbols), don't go past it!
Config.PlateLetters  = 3
Config.PlateNumbers  = 3
Config.PlateUseSpace = true

Config.Zones = {
	
	ShopEntering = {
		Pos   = { x = -31.50, y = -1664.00, z = 28.94 },
		Size  = { x = 1.5, y = 1.5, z = 1.0 },
		Type  = 36
	},
	ShopOutside = {
		Pos   = { x = -24.23, y = -1649.02, z = 29.48 },
		Size  = { x = 1.5, y = 1.5, z = 1.0 },
		Heading = 207.2,
		Type  = -1
	},

	ResellVehicle = {
		Pos   = { x = -26.92, y = -1658.61, z = 28.00 },
		Size  = { x = 3.0, y = 3.0, z = 1.0 },
		Type  = 1
	}

}
