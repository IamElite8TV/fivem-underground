Crafting = {}
Crafting.Locations = {
    [1] = {x = 483.82, y = -3065.6, z = 17.09},
}
Crafting.Items = {
    ["sage"] = {
        label = "Säge",
        needs = {
            ["metall"] = {label = "Metall", count = 10},
            ["eisen"] = {label = "Eisen", count = 10},
        },
        threshold = 0,
    },
	    ["weapon_assaultrifle"] = {
        label = "AK47",
        needs = {
            ["metall"] = {label = "Metall", count = 80},
            ["eisen"] = {label = "Eisen", count = 90},
			["holz"] = {label = "Holz", count = 40},
            ["sand"] = {label = "Sand", count = 40},
        },
        threshold = 0,
    },
    ["kevlar"] = {
        label = "Schutzweste",
        needs = {
            ["aramit"] = {label = "Aramit", count = 20},
			["metall"] = {label = "Metall", count = 5},
        },
        threshold = 0,
    },
    ["weapon_gusenberg"] = {
        label = "Gusenberg",
        needs = {
            ["sand"] = {label = "Sand", count = 40},
			["holz"] = {label = "Holz", count = 40},
			["eisen"] = {label = "Eisen", count = 100},
			["metall"] = {label = "Metall", count = 60},
        },
        threshold = 0,
    },
	    ["clip"] = {
        label = "Magazin",
        needs = {
            ["metall"] = {label = "Metall", count = 5},
			["sand"] = {label = "Sand", count = 5},
        },
        threshold = 0,
    },
}