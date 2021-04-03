Config                			= {}
Config.DrawDistance   			= 100
Config.Size           			= { x = 1.5, y = 1.5, z = 1.5 }
Config.Color          			= { r = 0, g = 128, b = 255 }
Config.Type           			= 1
Config.Locale         			= 'fr'
Config.EnableLicense  			= true
Config.LicensePrice   			= 5000
Config.EnableClipGunShop		= false
Config.EnableClipBlackWeashop	= false

Config.EnableClip = {
	GunShop = {
		Price = 5000,
		Label = "Chargeur"	
	},
	BlackWeashop = {
		Price = 8750,
		Label = "Chargeur"	
	}
}

Config.Zones = {

    GunShop = {
        legal = 0,
        Items = {},
        Pos   = {
            { x = -662777.180,   y = -9347777.961,   z = 20777.829 },


        }
    },

    BlackWeashop = {
        legal = 1,
        Items = {},
        Pos   = {
            { x = -134423406.239,   y = -323423494.018,  z = 32342345.695 },
        }
    },

}
