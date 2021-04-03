Crafting = {}
Crafting.Locations = {
    [1] = {x = 483.82, y = -3065.6, z = 17.09},
}
Crafting.Items = {
    ["sage"] = {
        label = "Säge",
        needs = {
            ["metall"] = {label = "Metall", count = 5},
            ["eisen"] = {label = "Eisen", count = 5},
        },
        threshold = 0,
    },
	    ["weapon_assaultrifle"] = {
        label = "AK47",
        needs = {
            ["metall"] = {label = "Metall", count = 40},
            ["eisen"] = {label = "Eisen", count = 10},
			["holz"] = {label = "Holz", count = 5},
            ["sand"] = {label = "Sand", count = 15},
        },
        threshold = 0,
    },
    ["kevlar"] = {
        label = "Schutzweste",
        needs = {
            ["aramit"] = {label = "Aramit", count = 10},
			["metall"] = {label = "Metall", count = 5},
        },
        threshold = 0,
    },
    ["weapon_gusenberg"] = {
        label = "Gusenberg",
        needs = {
            ["sand"] = {label = "Sand", count = 20},
			["holz"] = {label = "Holz", count = 20},
			["eisen"] = {label = "Eisen", count = 50},
			["metall"] = {label = "Metall", count = 30},
        },
        threshold = 0,
    },
	    ["clip"] = {
        label = "Magazin",
        needs = {
            ["metall"] = {label = "Metall", count = 5},
        },
        threshold = 0,
    },
}