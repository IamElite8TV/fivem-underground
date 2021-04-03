---------------------------------------------------------------------
                --[[SCRIPT MADE BY : ALEXMIHAI04]]--
               --[[DO NOT SELL OR COPY THIS SCRIPT]]--
                   --[[github.com/ItsAlexYTB]]--
        --[[ENJOY THE SCRIPT , DO NOT MAKE 1000 NPCS :))))) ]]
---------------------------------------------------------------------

--[[EXPLANATION [EN]: 

-1,2,3 : Coordonates
-4 : Name for the drawtext
-5 : Ped heading
-6 : Ped hash
-7: Ped model

]]--

--[[DO NOT TOUCH IF YOU DON'T KNOW WHAT YOU DO]]--

--[[EXPLANATION [RO]
-1,2,3 : sunt coordonatele de la npc
-4 : Numele care apare deasupra npc-ului
-5 : Heading (partea in care sta orientat)
-6 : Hash de la ped , se poate lua de pe net
-7 : Modelul de la ped , asemenea , il gasiti pe net


]]--

local coordonate = {
    --pd / gangs/ mafien
    {454.14,-980.01,29.69,"",86.89,0x5E3DA4A4,"s_m_y_cop_01"},
    {464.98,-993.51,23.91,"",126.84,0x5E3DA4A4,"s_m_y_cop_01"},
    {459.69,-989.77,23.91,"",269.56,0x15F8700D,"s_f_y_cop_01"},
    {1407.68,1115.2,113.84,"",359.17,0xE11A9FB4,"ig_josef"},
    -- SHOPS
    {129.25,-1283.79,28.27,"",117.4,0x0703F106,"csb_anita"},
	{2741.17,3475.75,54.67,"Shop",239.98,0xEE75A00F,"s_m_y_garbage"},
    {-1391.76,-605.63,29.32,"",113.04,0x0703F106,"csb_anita"},
    {-47.27,-1758.51,28.42,"",46.81,0x18CE57D0,"mp_m_shopkeep_01"},
    {-1221.96,-908.32,11.33,"",32.01,0x18CE57D0,"mp_m_shopkeep_01"},
    {-1486.26,-377.95,39.16,"",129.15,0x18CE57D0,"mp_m_shopkeep_01"},
    {-1819.59,793.57,137.09,"",133.85,0x18CE57D0,"mp_m_shopkeep_01"},
    {-2966.46,390.64,14.04,"",85.88,0x18CE57D0,"mp_m_shopkeep_01"},
    {-3038.55,584.6,6.91,"",16.01,0x18CE57D0,"mp_m_shopkeep_01"},
    {-3241.99,999.97,11.83,"",352.78,0x18CE57D0,"mp_m_shopkeep_01"},
    {24.43,-1347.12,28.5,"",270.39,0x18CE57D0,"mp_m_shopkeep_01"},
    {372.44,326.23,102.57,"",252.83,0x18CE57D0,"mp_m_shopkeep_01"},
    {1164.89,-323.46,68.21,"",97.65,0x18CE57D0,"mp_m_shopkeep_01"},
    {-706.13,-914.21,18.22,"",87.43,0x18CE57D0,"mp_m_shopkeep_01"},
    {1134.15,-982.48,45.42,"",274.53,0x18CE57D0,"mp_m_shopkeep_01"},
    {2557.57,380.8,107.62,"",358.39,0x18CE57D0,"mp_m_shopkeep_01"},
    {548.97,2671.83,41.16,"",94.16,0x18CE57D0,"mp_m_shopkeep_01"},
    {1166.1,2710.87,37.16,"",179.16,0x18CE57D0,"mp_m_shopkeep_01"},
    {2678.21,3279.27,54.24,"",330.48,0x18CE57D0,"mp_m_shopkeep_01"},
    {1960.18,3739.92,31.34,"",296.18,0x18CE57D0,"mp_m_shopkeep_01"},
    {1392.24,3606.27,33.98,"",192.24,0x85889AC3,"ig_chef2"},
    {1697.63,4923.21,41.06,"",324.47,0x18CE57D0,"mp_m_shopkeep_01"},
    {1727.6,6414.74,34.04,"",243.24,0x18CE57D0,"mp_m_shopkeep_01"},
    {246.74,-885.51,29.71,"",69.63,0xDB9C0997,"s_m_m_linecook"}, --mp1
    {248.58,-880.84,29.71,"",66.42,0xC8BB1E52,"u_m_y_mani"}, --mp2
    {309.07,-596.69,42.29,"",1.16,0xB353629E,"s_m_m_paramedic_01"}, -- krankenhaus1
    {-1092.01,-834.7,22.04,"",89.24,0x18CE57D0,"mp_m_shopkeep_01"},       -- pd2
    {483.78,-3065.8,16.09,"",356.24,0xEE75A00F,"s_m_y_garbage"},
    {-1337.12,-1278.98,3.86,"",61.64,0xE7A963D9,"a_m_y_beach_03"},
	{1734.8,2562.47,44.56,"",138.24,0x22911304,"s_m_y_doorman_01"},
    -- Kleidungsläden
    {73.92,-1393.01,28.38,"",268.64,0x5C2CF7F8,"a_f_y_bevhills_02"},
    {-709.0,-151.65,36.42,"",116.9,0x5C2CF7F8,"a_f_y_bevhills_02"},
    {-164.93,-303.02,38.73,"",249.09,0x5C2CF7F8,"a_f_y_bevhills_02"},
    {427.04,-806.1,28.49,"",89.64,0x5C2CF7F8,"a_f_y_bevhills_02"},
    {-823.65,-1072.59,10.33,"",206.23,0x5C2CF7F8,"a_f_y_bevhills_02"},
    {-1448.83,-238.04,48.81,"",41.93,0x5C2CF7F8,"a_f_y_bevhills_02"},
    {6.1,6511.71,30.88,"",36.57,0x5C2CF7F8,"a_f_y_bevhills_02"},
    {127.25,-223.45,53.56,"",68.78,0x5C2CF7F8,"a_f_y_bevhills_02"},
    {1695.33,4823.18,41.06,"",94.75,0x5C2CF7F8,"a_f_y_bevhills_02"},
    {612.91,2761.97,41.09,"",269.77,0x5C2CF7F8,"a_f_y_bevhills_02"},
    {1196.48,2711.67,37.22,"",180.29,0x5C2CF7F8,"a_f_y_bevhills_02"},
    {-1194.53,-767.35,16.32,"",215.78,0x5C2CF7F8,"a_f_y_bevhills_02"},
    {-3169.18,1043.84,19.86,"",63.05,0x5C2CF7F8,"a_f_y_bevhills_02"},
    {-1102.64,2711.36,18.11,"",218.74,0x5C2CF7F8,"a_f_y_bevhills_02"},
    {77.05,-1387.62,28.38,"Fürs Ohr",179.29,0x5C2CF7F8,"a_f_y_bevhills_02"},
    {79.97,-1387.68,28.38,"Brillen",179.31,0x5C2CF7F8,"a_f_y_bevhills_02"},
    {81.86,-1400.78,28.38,"Helme",34.5,0x23C7DC11,"a_m_y_beach_02"},
    -- waffenladen
    {22.47,-1105.51,28.8,"",159.56,0x36EA5B09,"mp_m_weapexp_01"},
    {2567.64,292.63,107.73,"",356.63,0x36EA5B09,"mp_m_weapexp_01"},
    {-1118.98,2699.83,17.55,"",219.32,0x36EA5B09,"mp_m_weapexp_01"},
    {842.42,-1035.28,27.19,"",359.56,0x36EA5B09,"mp_m_weapexp_01"},
    {-662.08,-933.56,20.83,"",176.78,0x36EA5B09,"mp_m_weapexp_01"},
    {810.38,-2159.13,28.62,"",359.24,0x36EA5B09,"mp_m_weapexp_01"},
    {1691.95,3760.7,33.71,"",226.43,0x36EA5B09,"mp_m_weapexp_01"},
    {-331.67,6085.01,30.45,"",225.91,0x36EA5B09,"mp_m_weapexp_01"},
    {253.82,-50.45,68.94,"",70.11,0x36EA5B09,"mp_m_weapexp_01"},
    --{201.04,2441.13,59.44,"Brauchst du Waffen?",316.67,0xF42EE883,"g_m_y_ballaeast_01"},
    -- garagen
    {-1183.76,-1509.11,3.65,"",123.33,0x14D7B4E0,"s_m_m_dockwork_01"},
    {213.55,-810.06,30.01,"",335.99,0x14D7B4E0,"s_m_m_dockwork_01"},
    {-353.68,-125.99,38.43,"",70.4,0x14D7B4E0,"s_m_m_dockwork_01"},
    {-349.09,-875.7,30.32,"",1.81,0x14D7B4E0,"s_m_m_dockwork_01"},
    {22.1,-1103.73,37.15,"",343.68,0x14D7B4E0,"s_m_m_dockwork_01"},
    {408.93,-1355.53,40.21,"",323.43,0x14D7B4E0,"s_m_m_dockwork_01"},
    {-756.08,-77.46,35.39,"",112.7,0x14D7B4E0,"s_m_m_dockwork_01"},
    {-1985.79,-314.9,47.11,"",56.69,0x14D7B4E0,"s_m_m_dockwork_01"},
    {-978.5,-2687.62,12.83,"",151.61,0x14D7B4E0,"s_m_m_dockwork_01"},
    {1738.09,3709.17,33.14,"",18.35,0x14D7B4E0,"s_m_m_dockwork_01"},
    {105.98,6614.39,31.4,"",134.01,0x14D7B4E0,"s_m_m_dockwork_01"},
    {374.5,-1619.69,28.29,"",288.32,0x14D7B4E0,"s_m_m_dockwork_01"},
    {-796.04,336.88,84.7,"",178.75,0x14D7B4E0,"s_m_m_dockwork_01"},
    {-360.86,-154.19,37.7,"",33.63,0x14D7B4E0,"s_m_m_dockwork_01"},
    {-3.48,-1736.93,28.31,"",65.62,0x14D7B4E0,"s_m_m_dockwork_01"},
    {-80.48,-817.21,35.04,"",350.52,0x14D7B4E0,"s_m_m_dockwork_01"},
    {-64.66,881.74,234.85,"",14.33,0x14D7B4E0,"s_m_m_dockwork_01"},
    {-1159.69,-739.52,18.89,"",216.93,0x14D7B4E0,"s_m_m_dockwork_01"}, --vespucci
    {-1365.93,54.24,53.10,"",91.01,0x22911304,"s_m_y_doorman_01"}, --golf
    {-1539.03,-617.24,22.39,"",260.01,0x22911304,"s_m_y_doorman_01"}, --crips



    --barbarshop
    {-821.87,-183.39,36.57,"",209.47,0x5C2CF7F8,"a_f_y_bevhills_02"},
    {134.74,-1708.13,28.29,"",138.71,0x5C2CF7F8,"a_f_y_bevhills_02"},
    {-1283.98,-1115.41,5.99,"",88.27,0x5C2CF7F8,"a_f_y_bevhills_02"},
    {1930.91,3728.24,31.84,"",209.07,0x5C2CF7F8,"a_f_y_bevhills_02"},
    {1211.45,-470.76,65.21,"",71.03,0x5C2CF7F8,"a_f_y_bevhills_02"},
    {-30.91,-151.85,56.08,"",338.95,0x5C2CF7F8,"a_f_y_bevhills_02"},
    {-277.98,6230.28,30.7,"",42.56,0x5C2CF7F8,"a_f_y_bevhills_02"},

    --tattoo
    {319.59,180.69,102.59,"",250.30,0x3A5201C5,"cs_terry"},
    {1324.70,-1650.42,51.28,"",130.10,0x3A5201C5,"cs_terry"},
    {-1152.13,-1423.97,3.95,"",126.17,0x3A5201C5,"cs_terry"},
    {-3170.78,1073.13,19.83,"",340.26,0x3A5201C5,"cs_terry"},
    {-292.14,6199.72,30.49,"",229.21,0x3A5201C5,"cs_terry"},
    {1862.64,3748.46,32.03,"",19.68,0x3A5201C5,"cs_terry"},

    --drogendealer
    {-1171.13,-1570.43,3.66,"",138.77,0xF42EE883,"g_m_y_ballaeast_01"},
    {2120.64,4784.62,39.97,"",265.22,0xF42EE883,"g_m_y_ballaeast_01"},
	--arbeitsamt
    {-553.66,-189.38,37.22,"",211.5, 0x45918E44,"cs_molly"},
    -- kevlar shop
    {17.16,-1109.46,28.8,"",249.83,0xDA2C984E,"mp_m_securoguard_01"},}

Citizen.CreateThread(function()

    for _,v in pairs(coordonate) do
      RequestModel(GetHashKey(v[7]))
      while not HasModelLoaded(GetHashKey(v[7])) do
        Wait(1)
      end
  
      RequestAnimDict("mini@strip_club@idles@bouncer@base")
      while not HasAnimDictLoaded("mini@strip_club@idles@bouncer@base") do
        Wait(1)
      end
      ped =  CreatePed(4, v[6],v[1],v[2],v[3], 3374176, false, true)
      SetEntityHeading(ped, v[5])
      FreezeEntityPosition(ped, true)
      SetEntityInvincible(ped, true)
      SetBlockingOfNonTemporaryEvents(ped, true)
      TaskPlayAnim(ped,"mini@strip_club@idles@bouncer@base","base", 8.0, 0.0, -1, 1, 0, 0, 0, 0)
    end
end)

Citizen.CreateThread(function()
    while true do
        local pos = GetEntityCoords(GetPlayerPed(-1), true)
        Citizen.Wait(0)
        for _,v in pairs(coordonate) do
            x = v[1]
            y = v[2]
            z = v[3]
            if(Vdist(pos.x, pos.y, pos.z, x, y, z) < 20.0)then
                DrawText3D(x,y,z+2.10, "~g~"..v[4], 1.2, 1)
                DrawText3D(x,y,z+1.95, "~w~", 1.0, 1)
            end
        end
    end
end)


function DrawText3D(x,y,z, text, scl, font) 

    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)
 
    local scale = (1/dist)*scl
    local fov = (1/GetGameplayCamFov())*100
    local scale = scale*fov
   
    if onScreen then
        SetTextScale(0.0*scale, 1.1*scale)
        SetTextFont(font)
        SetTextProportional(1)
        SetTextColour(255, 255, 255, 255)
        SetTextDropshadow(0, 0, 0, 0, 255)
        SetTextEdge(2, 0, 0, 0, 150)
        SetTextDropShadow()
        SetTextOutline()
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(text)
        DrawText(_x,_y)
    end
end

--[[ENJOY]]--