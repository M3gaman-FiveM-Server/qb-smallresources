Config = {}

Config.UseTarget = GetConvar('UseTarget', 'false') == 'true' -- Use qb-target interactions (don't change this, go to your server.cfg and add `setr UseTarget true` to use this and just that from true to false or the other way around)
Config.PauseMapText = ''                                     -- Text shown above the map when ESC is pressed. If left empty 'FiveM' will appear
Config.HarnessUses = 20
Config.DamageNeeded = 100.0                                  -- amount of damage till you can push your vehicle. 0-1000
Config.Logging = 'discord'                                   -- fivemanage

Config.AFK = {
    ignoredGroups = {
        ['mod'] = true,
        ['admin'] = true,
        ['god'] = true
    },
    secondsUntilKick = 1000000, -- AFK Kick Time Limit (in seconds)
    kickInCharMenu = false      -- Set to true if you want to kick players for being AFK even when they are in the character menu.
}

Config.HandsUp = {
    command = 'hu',
    keybind = 'X',
    controls = { 24, 25, 47, 58, 59, 63, 64, 71, 72, 75, 140, 141, 142, 143, 257, 263, 264 }
}

Config.Binoculars = {
    zoomSpeed = 10.0,        -- camera zoom speed
    storeBinocularsKey = 177 -- backspace by default
}

Config.AIResponse = {
    wantedLevels = false, -- if true, you will recieve wanted levels
    dispatchServices = {  -- AI dispatch services
        [1] = false,      -- Police Vehicles
        [2] = false,      -- Police Helicopters
        [3] = false,      -- Fire Department Vehicles
        [4] = false,      -- Swat Vehicles
        [5] = false,      -- Ambulance Vehicles
        [6] = false,      -- Police Motorcycles
        [7] = false,      -- Police Backup
        [8] = false,      -- Police Roadblocks
        [9] = false,      -- PoliceAutomobileWaitPulledOver
        [10] = false,     -- PoliceAutomobileWaitCruising
        [11] = false,     -- Gang Members
        [12] = false,     -- Swat Helicopters
        [13] = false,     -- Police Boats
        [14] = false,     -- Army Vehicles
        [15] = false      -- Biker Backup
    }
}

-- To Set This Up visit https://forum.cfx.re/t/how-to-updated-discord-rich-presence-custom-image/157686
Config.Discord = {
    isEnabled = false,                                     -- If set to true, then discord rich presence will be enabled
    applicationId = '00000000000000000',                   -- The discord application id
    iconLarge = 'logo_name',                               -- The name of the large icon
    iconLargeHoverText = 'This is a Large icon with text', -- The hover text of the large icon
    iconSmall = 'small_logo_name',                         -- The name of the small icon
    iconSmallHoverText = 'This is a Small icon with text', -- The hover text of the small icon
    updateRate = 60000,                                    -- How often the player count should be updated
    showPlayerCount = true,                                -- If set to true the player count will be displayed in the rich presence
    maxPlayers = 48,                                       -- Maximum amount of players
    buttons = {
        {
            text = 'First Button!',
            url = 'fivem://connect/localhost:30120'
        },
        {
            text = 'Second Button!',
            url = 'fivem://connect/localhost:30120'
        }
    }
}

Config.Density = {
    parked = 0.8,
    vehicle = 0.8,
    multiplier = 0.8,
    peds = 0.8,
    scenario = 0.8
}

Config.Disable = {
    hudComponents = { 1, 2, 3, 4, 7, 9, 13, 14, 19, 20, 21, 22 }, -- Hud Components: https://docs.fivem.net/natives/?_0x6806C51AD12B83B8
    controls = { 37 },                                            -- Controls: https://docs.fivem.net/docs/game-references/controls/
    displayAmmo = true,                                           -- false disables ammo display
    ambience = false,                                             -- disables distance sirens, distance car alarms, flight music, etc
    idleCamera = true,                                            -- disables the idle cinematic camera
    vestDrawable = false,                                         -- disables the vest equipped when using heavy armor
    pistolWhipping = true,                                        -- disables pistol whipping
    driveby = false,                                              -- disables driveby
}

Config.RelieveWeedStress = math.random(15, 20) -- stress relief amount (100 max)

Config.Consumables = {
    eat = { -- default food items
        ['sandwich'] = math.random(35, 54),
        ['tosti'] = math.random(40, 50),
        ['twerks_candy'] = math.random(35, 54),
        ['snikkel_candy'] = math.random(40, 50)
    },
    drink = { -- default drink items
        ['water_bottle'] = math.random(35, 54),
        ['kurkakola'] = math.random(35, 54),
        ['coffee'] = math.random(40, 50)
    },
    alcohol = { -- default alcohol items
        ['whiskey'] = math.random(20, 30),
        ['beer'] = math.random(30, 40),
        ['vodka'] = math.random(20, 40),
    },
    custom = {
        ['bacardi'] = {
            progress = {
                label = 'drinking bottle of bacardi',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49,
            },
            prop = {
                model = 'p_amb_bag_bottle_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.05), -- vector 3 format
                rotation = vec3(0.0, 0.0, -40), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 20),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        }, 
        ['bacardishot'] = {
            progress = {
                label = 'drinking a shot of bacardi',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49,
            },
            prop = {
                model = 'prop_drink_whisky',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.05), -- vector 3 format
                rotation = vec3(0.0, 0.0, -40), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 20),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['hennessey'] = {
            progress = {
                label = 'drinking bottle of hennessey',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49,
            },
            prop = {
                model = 'prop_bottle_brandy',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.05), -- vector 3 format
                rotation = vec3(0.0, 0.0, -40), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 20),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        }, 
        ['hennesseyshot'] = {
            progress = {
                label = 'drinking a shot of hennessey',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49,
            },
            prop = {
                model = 'prop_drink_whisky',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.05), -- vector 3 format
                rotation = vec3(0.0, 0.0, -40), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 20),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['tequila'] = {
            progress = {
                label = 'drinking bottle of tequila',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49,
            },
            prop = {
                model = 'prop_tequila_bottle',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.05), -- vector 3 format
                rotation = vec3(0.0, 0.0, -40), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 20),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['tequilashot'] = {
            progress = {
                label = 'drinking a shot of tequila',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49,
            },
            prop = {
                model = 'prop_drink_whisky',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.05), -- vector 3 format
                rotation = vec3(0.0, 0.0, -40), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 20),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['vodka'] = {
            progress = {
                label = 'drinking bottle of vodka',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49,
            },
            prop = {
                model = 'prop_vodka_bottle',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.05), -- vector 3 format
                rotation = vec3(0.0, 0.0, -40), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 20),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },  
        ['vodkashot'] = {
            progress = {
                label = 'drinking a shot of vodka',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49,
            },
            prop = {
                model = 'prop_drink_whisky',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.05), -- vector 3 format
                rotation = vec3(0.0, 0.0, -40), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 20),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['whiskey'] = {
            progress = {
                label = 'drinking bottle of whiskey',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49,
            },
            prop = {
                model = 'prop_whiskey_bottle',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.05), -- vector 3 format
                rotation = vec3(0.0, 0.0, -40), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 20),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        }, 
        ['whiskeyshot'] = {
            progress = {
                label = 'drinking a shot of whiskey',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49,
            },
            prop = {
                model = 'prop_drink_whisky',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.05), -- vector 3 format
                rotation = vec3(0.0, 0.0, -40), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 20),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['applecocktail'] = {
            progress = {
                label = 'drinking an apple cocktail',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49,
            },
            prop = {
                model = 'prop_drink_redwine',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.05), -- vector 3 format
                rotation = vec3(0.0, 0.0, -40), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 20),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        }, 
        ['bananacocktail'] = {
            progress = {
                label = 'drinking a banana cocktail',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49,
            },
            prop = {
                model = 'prop_drink_redwine',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.05), -- vector 3 format
                rotation = vec3(0.0, 0.0, -40), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 20),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['blueberrycocktail'] = {
            progress = {
                label = 'drinking a blueberry cocktail',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49,
            },
            prop = {
                model = 'prop_drink_redwine',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.05), -- vector 3 format
                rotation = vec3(0.0, 0.0, -40), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 20),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['cherrycocktail'] = {
            progress = {
                label = 'drinking a cherry cocktail',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49,
            },
            prop = {
                model = 'prop_drink_redwine',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.05), -- vector 3 format
                rotation = vec3(0.0, 0.0, -40), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 20),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['cocktail'] = {
            progress = {
                label = 'drinking a cocktail',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49,
            },
            prop = {
                model = 'prop_drink_redwine',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.05), -- vector 3 format
                rotation = vec3(0.0, 0.0, -40), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 20),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['kiwicocktail'] = {
            progress = {
                label = 'drinking a kiwi cocktail',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49,
            },
            prop = {
                model = 'prop_drink_redwine',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.05), -- vector 3 format
                rotation = vec3(0.0, 0.0, -40), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 20),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['orangecocktail'] = {
            progress = {
                label = 'drinking a orange cocktail',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49,
            },
            prop = {
                model = 'prop_drink_redwine',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.05), -- vector 3 format
                rotation = vec3(0.0, 0.0, -40), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 20),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },
        ['coconutdrink'] = {
            progress = {
                label = 'drinking a coconut drink',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49,
            },
            prop = {
                model = 'prop_tall_glass',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.05), -- vector 3 format
                rotation = vec3(0.0, 0.0, -40), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(30, 50),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },     
                ['watermelongummies'] = {
            progress = {
                label = 'eating some watermelon gummies',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'ng_proc_food_ornge1a',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 20),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },  
        ['grapegummies'] = {
            progress = {
                label = 'eating some grape gummies',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'ng_proc_food_ornge1a',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 20),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['cherrygummies'] = {
            progress = {
                label = 'eating some cherry gummies',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'ng_proc_food_ornge1a',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 20),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['blueberrygummies'] = {
            progress = {
                label = 'eating some blueberry gummies',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'ng_proc_food_ornge1a',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 20),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['specialicecreamcone'] = {
            progress = {
                label = 'eating a special ice cream cone',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'ng_proc_food_ornge1a',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 20),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },
        ['cocacola'] = {
            progress = {
                label = 'drinking a coca cola',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49,
            },
            prop = {
                model = 'prop_food_juice02',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.05), -- vector 3 format
                rotation = vec3(0.0, 0.0, -40), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(30, 50),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['dietcocacola'] = {
            progress = {
                label = 'drinking a diet coca cola',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49,
            },
            prop = {
                model = 'prop_food_juice02',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.05), -- vector 3 format
                rotation = vec3(0.0, 0.0, -40), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(30, 50),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },  
        ['pepsi'] = {
            progress = {
                label = 'drinking a pepsi',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49,
            },
            prop = {
                model = 'prop_food_juice02',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.05), -- vector 3 format
                rotation = vec3(0.0, 0.0, -40), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(30, 50),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['dietpepsi'] = {
            progress = {
                label = 'drinking a diet pepsi',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49,
            },
            prop = {
                model = 'prop_food_juice02',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.05), -- vector 3 format
                rotation = vec3(0.0, 0.0, -40), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(30, 50),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },  
        ['drpepper'] = {
            progress = {
                label = 'drinking a dr pepper',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49,
            },
            prop = {
                model = 'prop_food_juice02',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.05), -- vector 3 format
                rotation = vec3(0.0, 0.0, -40), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(30, 50),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['fanta'] = {
            progress = {
                label = 'drinking a fanta',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49,
            },
            prop = {
                model = 'prop_food_juice02',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.05), -- vector 3 format
                rotation = vec3(0.0, 0.0, -40), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(30, 50),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        }, 
        ['hic'] = {
            progress = {
                label = 'drinking a hi-c',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49,
            },
            prop = {
                model = 'prop_food_juice02',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.05), -- vector 3 format
                rotation = vec3(0.0, 0.0, -40), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(30, 50),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['minutemaid'] = {
            progress = {
                label = 'drinking a minutemaid',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49,
            },
            prop = {
                model = 'prop_food_juice02',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.05), -- vector 3 format
                rotation = vec3(0.0, 0.0, -40), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(30, 50),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },
        ['mountaindew'] = {
            progress = {
                label = 'drinking a mountain dew',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49,
            },
            prop = {
                model = 'prop_food_juice02',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.05), -- vector 3 format
                rotation = vec3(0.0, 0.0, -40), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(30, 50),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['spritedrink'] = {
            progress = {
                label = 'drinking a sprite',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49,
            },
            prop = {
                model = 'prop_food_juice02',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.05), -- vector 3 format
                rotation = vec3(0.0, 0.0, -40), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(30, 50),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['applesmoothie'] = {
            progress = {
                label = 'drinking an apple smoothie',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49,
            },
            prop = {
                model = 'prop_tall_glass',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.05), -- vector 3 format
                rotation = vec3(0.0, 0.0, -40), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(30, 50),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['bananasmoothie'] = {
            progress = {
                label = 'drinking a banana smoothie',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49,
            },
            prop = {
                model = 'prop_tall_glass',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.05), -- vector 3 format
                rotation = vec3(0.0, 0.0, -40), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(30, 50),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['cherrysmoothie'] = {
            progress = {
                label = 'drinking a cherry smoothie',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49,
            },
            prop = {
                model = 'prop_tall_glass',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.05), -- vector 3 format
                rotation = vec3(0.0, 0.0, -40), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(30, 50),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['strawberrysmoothie'] = {
            progress = {
                label = 'drinking a strawberry smoothie',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49,
            },
            prop = {
                model = 'prop_tall_glass',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.05), -- vector 3 format
                rotation = vec3(0.0, 0.0, -40), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(30, 50),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['watermelonsmoothie'] = {
            progress = {
                label = 'drinking a watermelon smoothie',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49,
            },
            prop = {
                model = 'prop_tall_glass',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.05), -- vector 3 format
                rotation = vec3(0.0, 0.0, -40), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(30, 50),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['bananajuice'] = {
            progress = {
                label = 'drinking a banana juice',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49,
            },
            prop = {
                model = 'prop_tall_glass',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.05), -- vector 3 format
                rotation = vec3(0.0, 0.0, -40), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(30, 50),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['kiwijuice'] = {
            progress = {
                label = 'drinking a kiwi juice',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49,
            },
            prop = {
                model = 'prop_tall_glass',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.05), -- vector 3 format
                rotation = vec3(0.0, 0.0, -40), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(30, 50),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['strawberryjuice'] = {
            progress = {
                label = 'drinking a strawberry juice',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49,
            },
            prop = {
                model = 'prop_tall_glass',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.05), -- vector 3 format
                rotation = vec3(0.0, 0.0, -40), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(30, 50),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['blueberrydrink'] = {
            progress = {
                label = 'drinking a blueberrydrink',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49,
            },
            prop = {
                model = 'prop_tall_glass',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.05), -- vector 3 format
                rotation = vec3(0.0, 0.0, -40), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(30, 50),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },  
        ['cherrydrink'] = {
            progress = {
                label = 'drinking a cherry drink',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49,
            },
            prop = {
                model = 'prop_tall_glass',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.05), -- vector 3 format
                rotation = vec3(0.0, 0.0, -40), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(30, 50),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['lemondrink'] = {
            progress = {
                label = 'drinking a lemon drink',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49,
            },
            prop = {
                model = 'prop_tall_glass',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.05), -- vector 3 format
                rotation = vec3(0.0, 0.0, -40), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(30, 50),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['limedrink'] = {
            progress = {
                label = 'drinking a lime drink',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49,
            },
            prop = {
                model = 'prop_tall_glass',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.05), -- vector 3 format
                rotation = vec3(0.0, 0.0, -40), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(30, 50),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['orangedrink'] = {
            progress = {
                label = 'drinking a orange drink',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49,
            },
            prop = {
                model = 'prop_tall_glass',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.05), -- vector 3 format
                rotation = vec3(0.0, 0.0, -40), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(30, 50),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['watermelondrink'] = {
            progress = {
                label = 'drinking a watermelon drink',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49,
            },
            prop = {
                model = 'prop_tall_glass',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.05), -- vector 3 format
                rotation = vec3(0.0, 0.0, -40), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(30, 50),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['blueraspberryslushie'] = {
            progress = {
                label = 'drinking a blue raspberry slushie',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49,
            },
            prop = {
                model = 'prop_tall_glass',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.05), -- vector 3 format
                rotation = vec3(0.0, 0.0, -40), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(30, 50),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['cherryslushie'] = {
            progress = {
                label = 'drinking a cherry slushie',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49,
            },
            prop = {
                model = 'prop_tall_glass',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.05), -- vector 3 format
                rotation = vec3(0.0, 0.0, -40), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(30, 50),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['grapeslushie'] = {
            progress = {
                label = 'drinking a grape slushie',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49,
            },
            prop = {
                model = 'prop_tall_glass',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.05), -- vector 3 format
                rotation = vec3(0.0, 0.0, -40), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(30, 50),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },
        ['lemonlimeslushie'] = {
            progress = {
                label = 'drinking a lemon lime slushie',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49,
            },
            prop = {
                model = 'prop_tall_glass',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.05), -- vector 3 format
                rotation = vec3(0.0, 0.0, -40), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(30, 50),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['orangeslushie'] = {
            progress = {
                label = 'drinking a orange slushie',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49,
            },
            prop = {
                model = 'prop_tall_glass',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.05), -- vector 3 format
                rotation = vec3(0.0, 0.0, -40), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(30, 50),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        }, 
        ['strawberryslushie'] = {
            progress = {
                label = 'drinking a strawberry slushie',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49,
            },
            prop = {
                model = 'prop_tall_glass',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.05), -- vector 3 format
                rotation = vec3(0.0, 0.0, -40), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(30, 50),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },
        ['tropicalslushie'] = {
            progress = {
                label = 'drinking a tropical slushie',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49,
            },
            prop = {
                model = 'prop_tall_glass',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.05), -- vector 3 format
                rotation = vec3(0.0, 0.0, -40), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(30, 50),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },  
        ['bubblegumsmoothie'] = {
            progress = {
                label = 'drinking a bubblegum smoothie',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49,
            },
            prop = {
                model = 'prop_tall_glass',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.05), -- vector 3 format
                rotation = vec3(0.0, 0.0, -40), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(30, 50),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },  
        ['butterscotchsmoothie'] = {
            progress = {
                label = 'drinking a butterscotch smoothie',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49,
            },
            prop = {
                model = 'prop_tall_glass',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.05), -- vector 3 format
                rotation = vec3(0.0, 0.0, -40), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(30, 50),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['chocolatesmoothie'] = {
            progress = {
                label = 'drinking a chocolate smoothie',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49,
            },
            prop = {
                model = 'prop_tall_glass',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.05), -- vector 3 format
                rotation = vec3(0.0, 0.0, -40), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(30, 50),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        }, 
        ['cookiedoughsmoothie'] = {
            progress = {
                label = 'drinking a cookie dough smoothie',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49,
            },
            prop = {
                model = 'prop_tall_glass',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.05), -- vector 3 format
                rotation = vec3(0.0, 0.0, -40), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(30, 50),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['mintsmoothie'] = {
            progress = {
                label = 'drinking a mint smoothie',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49,
            },
            prop = {
                model = 'prop_tall_glass',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.05), -- vector 3 format
                rotation = vec3(0.0, 0.0, -40), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(30, 50),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['oreosmoothie'] = {
            progress = {
                label = 'drinking a oreo smoothie',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49,
            },
            prop = {
                model = 'prop_tall_glass',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.05), -- vector 3 format
                rotation = vec3(0.0, 0.0, -40), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(30, 50),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['pistachiosmoothie'] = {
            progress = {
                label = 'drinking a pistachiosmoothie',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49,
            },
            prop = {
                model = 'prop_tall_glass',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.05), -- vector 3 format
                rotation = vec3(0.0, 0.0, -40), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(30, 50),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },  
        ['saltedcaramelsmoothie'] = {
            progress = {
                label = 'drinking a salted caramel smoothie',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49,
            },
            prop = {
                model = 'prop_tall_glass',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.05), -- vector 3 format
                rotation = vec3(0.0, 0.0, -40), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(30, 50),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['strawberrysmoothie'] = {
            progress = {
                label = 'drinking a strawberry smoothie',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49,
            },
            prop = {
                model = 'prop_tall_glass',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.05), -- vector 3 format
                rotation = vec3(0.0, 0.0, -40), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(30, 50),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['toffeesmoothie'] = {
            progress = {
                label = 'drinking a toffee smoothie',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49,
            },
            prop = {
                model = 'prop_tall_glass',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.05), -- vector 3 format
                rotation = vec3(0.0, 0.0, -40), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(30, 50),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['ice'] = {
            progress = {
                label = 'eating ice',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49,
            },
            prop = {
                model = 'prop_tall_glass',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.05), -- vector 3 format
                rotation = vec3(0.0, 0.0, -40), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(30, 50),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        }, 
        ['blackcoffee'] = {
            progress = {
                label = 'drinking a black coffee',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49,
            },
            prop = {
                model = 'prop_food_coffee',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.05), -- vector 3 format
                rotation = vec3(0.0, 0.0, -40), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(30, 50),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['cappuccino'] = {
            progress = {
                label = 'drinking a cappuccino',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49,
            },
            prop = {
                model = 'prop_food_coffee',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.05), -- vector 3 format
                rotation = vec3(0.0, 0.0, -40), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(30, 50),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },
        ['decafcoffee'] = {
            progress = {
                label = 'drinking a decaf coffee',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49,
            },
            prop = {
                model = 'prop_food_coffee',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.05), -- vector 3 format
                rotation = vec3(0.0, 0.0, -40), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(30, 50),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['espresso'] = {
            progress = {
                label = 'drinking a espresso',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49,
            },
            prop = {
                model = 'prop_food_coffee',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.05), -- vector 3 format
                rotation = vec3(0.0, 0.0, -40), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(30, 50),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        }, 
        ['frappe'] = {
            progress = {
                label = 'drinking a frappe',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49,
            },
            prop = {
                model = 'prop_food_coffee',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.05), -- vector 3 format
                rotation = vec3(0.0, 0.0, -40), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(30, 50),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        }, 
        ['milk'] = {
            progress = {
                label = 'drinking milk',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49,
            },
            prop = {
                model = 'prop_tall_glass',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.05), -- vector 3 format
                rotation = vec3(0.0, 0.0, -40), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(30, 50),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['frothedmilk'] = {
            progress = {
                label = 'drinking a frothed milk',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49,
            },
            prop = {
                model = 'prop_food_coffee',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.05), -- vector 3 format
                rotation = vec3(0.0, 0.0, -40), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(30, 50),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['heartcoffee'] = {
            progress = {
                label = 'drinking a heart coffee',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49,
            },
            prop = {
                model = 'prop_food_coffee',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.05), -- vector 3 format
                rotation = vec3(0.0, 0.0, -40), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(30, 50),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },  
        ['hotchocolate'] = {
            progress = {
                label = 'drinking a hot chocolate',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49,
            },
            prop = {
                model = 'prop_food_coffee',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.05), -- vector 3 format
                rotation = vec3(0.0, 0.0, -40), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(30, 50),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        }, 
        ['icecoffee'] = {
            progress = {
                label = 'drinking a ice coffee',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49,
            },
            prop = {
                model = 'prop_food_coffee',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.05), -- vector 3 format
                rotation = vec3(0.0, 0.0, -40), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(30, 50),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['latte'] = {
            progress = {
                label = 'drinking a latte',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49,
            },
            prop = {
                model = 'prop_food_coffee',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.05), -- vector 3 format
                rotation = vec3(0.0, 0.0, -40), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(30, 50),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['tea'] = {
            progress = {
                label = 'drinking a tea',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 49,
            },
            prop = {
                model = 'prop_food_coffee',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.05), -- vector 3 format
                rotation = vec3(0.0, 0.0, -40), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(30, 50),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['burger'] = {
            progress = {
                label = 'eating a burger',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['cheeseburger'] = {
            progress = {
                label = 'eating a burger',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['doublecheeseburger'] = {
            progress = {
                label = 'eating a burger',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['triplecheeseburger'] = {
            progress = {
                label = 'eating a burger',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },  
        ['baconcheeseburger'] = {
            progress = {
                label = 'eating a burger',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['heartstopper'] = {
            progress = {
                label = 'eating a burger',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(70, 80),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        }, 
        ['moneyshot'] = {
            progress = {
                label = 'eating a burger',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        }, 
        ['bleeder'] = {
            progress = {
                label = 'eating a burger',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },
        ['bigmac'] = {
            progress = {
                label = 'eating a big mac',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },
        ['fishsandwhich'] = {
            progress = {
                label = 'eating some fish',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        }, 
        ['chickenbiscuit'] = {
            progress = {
                label = 'eating some chicken',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['chickenwrap'] = {
            progress = {
                label = 'eating some chicken',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['spicychickenwrap'] = {
            progress = {
                label = 'eating some chicken',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['chickensandwhich'] = {
            progress = {
                label = 'eating some chicken',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },  
        ['chickensandwhichdeluxe'] = {
            progress = {
                label = 'eating some chicken',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['spicydeluxechickensandwhich'] = {
            progress = {
                label = 'eating some chicken',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        }, 
        ['grilledchickendeluxe'] = {
            progress = {
                label = 'eating some chicken',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },  
        ['grilledchickenbaconsandwhichdeluxe'] = {
            progress = {
                label = 'eating some chicken',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['hotdog'] = {
            progress = {
                label = 'eating a hotdog',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['ketchupdog'] = {
            progress = {
                label = 'eating a hotdog',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },  
        ['mustarddog'] = {
            progress = {
                label = 'eating a hotdog',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['cheesedog'] = {
            progress = {
                label = 'eating a hotdog',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },  
        ['baconcheesedog'] = {
            progress = {
                label = 'eating a hotdog',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },  
        ['chillicheesedog'] = {
            progress = {
                label = 'eating a hotdog',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['crunchybeeftaco'] = {
            progress = {
                label = 'eating a taco',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['softbeeftaco'] = {
            progress = {
                label = 'eating a taco',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['chickentaco'] = {
            progress = {
                label = 'eating a taco',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['softsteaktaco'] = {
            progress = {
                label = 'eating a taco',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['beanburrito'] = {
            progress = {
                label = 'eating a burrito',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['beefburrito'] = {
            progress = {
                label = 'eating a burrito',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },  
        ['chickenburrito'] = {
            progress = {
                label = 'eating a burrito',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['enchilada'] = {
            progress = {
                label = 'eating a enchilada',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['quesadilla'] = {
            progress = {
                label = 'eating a quesadilla',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },  
        ['nachos'] = {
            progress = {
                label = 'eating nachos',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['tacosalad'] = {
            progress = {
                label = 'eating a salad',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },  
        ['bltsub'] = {
            progress = {
                label = 'eating a sub',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['meatballsub'] = {
            progress = {
                label = 'eating a sub',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },  
        ['ovenroastedchickensub'] = {
            progress = {
                label = 'eating a sub',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['phillycheesesteaksub'] = {
            progress = {
                label = 'eating a sub',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['spicyitaliansub'] = {
            progress = {
                label = 'eating a sub',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['tunasub'] = {
            progress = {
                label = 'eating a sub',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['veggiesub'] = {
            progress = {
                label = 'eating a sub',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },
        ['cheesepizzaslice'] = {
            progress = {
                label = 'eating some pizza',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['jalepenopepperonipizzaslice'] = {
            progress = {
                label = 'eating some pizza',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['pepperonipizzaslice'] = {
            progress = {
                label = 'eating some pizza',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['sausagepizzaslice'] = {
            progress = {
                label = 'eating some pizza',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },  
        ['supremepizzaslice'] = {
            progress = {
                label = 'eating some pizza',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },  
        ['cluckinballs'] = {
            progress = {
                label = 'eating some chicken',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_food_cb_chips',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['cluckinwings'] = {
            progress = {
                label = 'eating some chicken',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_food_cb_chips',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        }, 
        ['chickentenders'] = {
            progress = {
                label = 'eating some chicken',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['nuggets'] = {
            progress = {
                label = 'eating some chicken',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['mildwings'] = {
            progress = {
                label = 'eating some chicken',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },  
        ['bonelessmildwings'] = {
            progress = {
                label = 'eating some chicken',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['friedchickenwings'] = {
            progress = {
                label = 'eating some chicken',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['friedchicken'] = {
            progress = {
                label = 'eating some chicken',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },  
        ['spaghettimeatballs'] = {
            progress = {
                label = 'eating some pasta',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['chickenparmesan'] = {
            progress = {
                label = 'eating some pasta',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        }, 
        ['chickenalfredo'] = {
            progress = {
                label = 'eating some pasta',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['macndcheese'] = {
            progress = {
                label = 'eating some mac & cheese',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['salad'] = {
            progress = {
                label = 'eating a sald',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['cluckinrings'] = {
            progress = {
                label = 'eating some chicken',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },  
        ['cluckinfries'] = {
            progress = {
                label = 'eating some fries',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },  
        ['burgershotfries'] = {
            progress = {
                label = 'eating some fries',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        }, 
        ['chillicheesefries'] = {
            progress = {
                label = 'eating some fries',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },  
        ['baconcheesefries'] = {
            progress = {
                label = 'eating some fries',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },  
        ['cheesefries'] = {
            progress = {
                label = 'eating some fries',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },  
        ['fries'] = {
            progress = {
                label = 'eating some fries',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        }, 
        ['mashpotatoes'] = {
            progress = {
                label = 'eating some potatoes',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        }, 
        ['strawberrybananapancakes'] = {
            progress = {
                label = 'eating some pancakes',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },
        ['blueberrypancakes'] = {
            progress = {
                label = 'eating some pancakes',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },  
        ['pancakes'] = {
            progress = {
                label = 'eating some pancakes',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['eggschickenbiscuit'] = {
            progress = {
                label = 'eating some breakfast',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },  
        ['breakfastplatter'] = {
            progress = {
                label = 'eating some breakfast',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['sausageeggcheesecroissant'] = {
            progress = {
                label = 'eating some breakfast',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['sausageeggcheesebagel'] = {
            progress = {
                label = 'eating some breakfast',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['baconeggcheesecrossaint'] = {
            progress = {
                label = 'eating some breakfast',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        }, 
        ['baconeggcheesebagel'] = {
            progress = {
                label = 'eating some breakfast',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        }, 
        ['creamcheesebagel'] = {
            progress = {
                label = 'eating some breakfast',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },
        ['scrambledeggs'] = {
            progress = {
                label = 'eating some eggs',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['friedegg'] = {
            progress = {
                label = 'eating some eggs',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },  
        ['sausage'] = {
            progress = {
                label = 'eating some meat',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['steak'] = {
            progress = {
                label = 'eating some meat',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['slicedsteak'] = {
            progress = {
                label = 'eating some meat',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },  
        ['porkchops'] = {
            progress = {
                label = 'eating some meat',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['meatballs'] = {
            progress = {
                label = 'eating some meat',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['cookedhotdog'] = {
            progress = {
                label = 'eating some meat',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },  
        ['cookedgroundbeef'] = {
            progress = {
                label = 'eating some meat',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['cookedbacon'] = {
            progress = {
                label = 'eating some meat',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },  
        ['fishpatty'] = {
            progress = {
                label = 'eating some meat',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['grilledchickenpatty'] = {
            progress = {
                label = 'eating some meat',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['spicychickenpatty'] = {
            progress = {
                label = 'eating some meat',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['chickenpatty'] = {
            progress = {
                label = 'eating some meat',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['beefpatty'] = {
            progress = {
                label = 'eating some meat',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['vanillaicecream'] = {
            progress = {
                label = 'eating some icecream',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        }, 
        ['toffeeicecream'] = {
            progress = {
                label = 'eating some icecream',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },
        ['strawberryicecream'] = {
            progress = {
                label = 'eating some icecream',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['saltedcaramelicecream'] = {
            progress = {
                label = 'eating some icecream',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['pistachioicecream'] = {
            progress = {
                label = 'eating some icecream',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['oreoicecream'] = {
            progress = {
                label = 'eating some icecream',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },  
        ['minticecream'] = {
            progress = {
                label = 'eating some icecream',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        }, 
        ['cookiedoughicecream'] = {
            progress = {
                label = 'eating some icecream',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['chocolateicecream'] = {
            progress = {
                label = 'eating some icecream',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['butterscotchicecream'] = {
            progress = {
                label = 'eating some icecream',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['bubblegumicecream'] = {
            progress = {
                label = 'eating some icecream',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['watermelonslice'] = {
            progress = {
                label = 'eating some icecream',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'ng_proc_food_ornge1a',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 20),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },  
        ['slicedtomatoes'] = {
            progress = {
                label = 'eating some tomatoes',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'ng_proc_food_ornge1a',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 20),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['slicedpineapples'] = {
            progress = {
                label = 'eating some pineapples',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'ng_proc_food_ornge1a',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 20),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['slicedpickles'] = {
            progress = {
                label = 'eating some pickles',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'ng_proc_food_ornge1a',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 20),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['slicedpeppers'] = {
            progress = {
                label = 'eating some peppers',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'ng_proc_food_ornge1a',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 20),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['slicedonions'] = {
            progress = {
                label = 'eating some onions',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'ng_proc_food_ornge1a',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 20),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },  
        ['slicedlime'] = {
            progress = {
                label = 'eating some limes',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'ng_proc_food_ornge1a',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 20),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['slicedlettuce'] = {
            progress = {
                label = 'eating some lettuce',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'ng_proc_food_ornge1a',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 20),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['slicedlemon'] = {
            progress = {
                label = 'eating some lemons',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'ng_proc_food_ornge1a',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 20),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['slicedkiwi'] = {
            progress = {
                label = 'eating some kiwis',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'ng_proc_food_ornge1a',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 20),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },  
        ['slicedjalapenos'] = {
            progress = {
                label = 'eating some jalapenos',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'ng_proc_food_ornge1a',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 20),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        }, 
        ['slicedcucumbers'] = {
            progress = {
                label = 'eating some cucumbers',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'ng_proc_food_ornge1a',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 20),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['slicedcoconut'] = {
            progress = {
                label = 'eating some coconut',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'ng_proc_food_ornge1a',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 20),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['slicedbananas'] = {
            progress = {
                label = 'eating some bananas',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'ng_proc_food_ornge1a',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 20),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['slicedapples'] = {
            progress = {
                label = 'eating some apples',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'ng_proc_food_ornge1a',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 20),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['orangeslices'] = {
            progress = {
                label = 'eating some orange slices',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'ng_proc_food_ornge1a',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 20),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },
        ['slicedsalami'] = {
            progress = {
                label = 'eating some sliced salami',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 20),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },  
        ['slicedpepperoni'] = {
            progress = {
                label = 'eating some sliced pepperoni',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 20),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['slicedbread'] = {
            progress = {
                label = 'eating some sliced bread',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 20),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['slicedbacon'] = {
            progress = {
                label = 'eating some sliced bacon',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 20),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['slicedcheese'] = {
            progress = {
                label = 'eating some sliced cheese',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 20),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },
        ['shreddedcheese'] = {
            progress = {
                label = 'eating some shredded cheese',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 20),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['mozzarellacheese'] = {
            progress = {
                label = 'eating some mozzarella cheese',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 20),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['gratedparmesan'] = {
            progress = {
                label = 'eating some grated parmesan',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 20),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        }, 
        ['tunachunks'] = {
            progress = {
                label = 'eating some tuna chunks',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 20),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        }, 
        ['watermelon'] = {
            progress = {
                label = 'eating a watermelon',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'ng_proc_food_ornge1a',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 20),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['pickle'] = {
            progress = {
                label = 'eating a pickle',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'ng_proc_food_ornge1a',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 20),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['pepper'] = {
            progress = {
                label = 'eating a pepper',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'ng_proc_food_ornge1a',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 20),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        }, 
        ['onion'] = {
            progress = {
                label = 'eating a onion',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'ng_proc_food_ornge1a',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 20),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['lime'] = {
            progress = {
                label = 'eating a lime',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'ng_proc_food_ornge1a',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 20),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['kiwi'] = {
            progress = {
                label = 'eating a kiwi',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'ng_proc_food_ornge1a',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 20),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['jalepeno'] = {
            progress = {
                label = 'eating a jalepeno',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'ng_proc_food_ornge1a',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 20),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },  
        ['cucumber'] = {
            progress = {
                label = 'eating a cucumber',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'ng_proc_food_ornge1a',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 20),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },  
        ['banana'] = {
            progress = {
                label = 'eating a banana',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'ng_proc_food_nana1a',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 20),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },
        ['blackolives'] = {
            progress = {
                label = 'eating a blacko lives',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'ng_proc_food_ornge1a',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 20),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },  
        ['lettuce'] = {
            progress = {
                label = 'eating lettuce',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'ng_proc_food_ornge1a',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 20),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },  
        ['mushroom'] = {
            progress = {
                label = 'eating mushroom',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'ng_proc_food_ornge1a',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 20),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['orange'] = {
            progress = {
                label = 'eating a orange',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'ng_proc_food_ornge1a',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 20),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['apple'] = {
            progress = {
                label = 'eating an apple',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'ng_proc_food_ornge1a',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 20),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['strawberry'] = {
            progress = {
                label = 'eating a strawberry',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'ng_proc_food_ornge1a',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 20),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['blueberry'] = {
            progress = {
                label = 'eating a blueberry',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'ng_proc_food_ornge1a',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 20),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['cherry'] = {
            progress = {
                label = 'eating a cherry',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'ng_proc_food_ornge1a',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 20),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['lemon'] = {
            progress = {
                label = 'eating a lemon',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'ng_proc_food_ornge1a',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 20),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['pineapple'] = {
            progress = {
                label = 'eating a pineapple',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'ng_proc_food_ornge1a',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 20),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['coconut'] = {
            progress = {
                label = 'eating a coconut',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'ng_proc_food_ornge1a',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 20),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['tomato'] = {
            progress = {
                label = 'eating a tomato',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'ng_proc_food_ornge1a',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 20),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   
        ['egg'] = {
            progress = {
                label = 'eating a egg',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'ng_proc_food_ornge1a',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 20),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },   

        ['biscuit'] = {
            progress = {
                label = 'eating a biscuit',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },  
        ['hotdogbun'] = {
            progress = {
                label = 'eating a hot dog bun',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 30),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },  
        ['burgerbun'] = {
            progress = {
                label = 'eating a burger bun',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 30),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },  
        ['croissant'] = {
            progress = {
                label = 'eating a croissant',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 30),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },  
        ['bagel'] = {
            progress = {
                label = 'eating a bagel',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 30),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },  
        ['loafbread'] = {
            progress = {
                label = 'eating a loafbread',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        }, 
        ['bread'] = {
            progress = {
                label = 'eating bread',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 30),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },  
        ['tortillachips'] = {
            progress = {
                label = 'eating a tortilla chips',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'prop_cs_burger_01',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 30),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },  
        ['cookiedough'] = {
            progress = {
                label = 'eating a cookie dough',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'ng_proc_food_ornge1a',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 20),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        }, 
        ['cookie'] = {
            progress = {
                label = 'eating a cookie',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'ng_proc_food_ornge1a',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 20),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },
        ['muffin'] = {
            progress = {
                label = 'eating a muffin',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'ng_proc_food_ornge1a',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 20),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        }, 
        ['brownie'] = {
            progress = {
                label = 'eating a brownie',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'ng_proc_food_ornge1a',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 20),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        }, 
        ['oreo'] = {
            progress = {
                label = 'eating a oreo',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 49,
            },
            prop = {
                model = 'ng_proc_food_ornge1a',
                bone = 60309,
                coords = vec3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vec3(30, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(10, 20),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        }, 
                        -- put any custom items here
        -- ['newitem'] = {
        --     progress = {
        --         label = 'Using Item...',
        --         time = 5000
        --     },
        --     animation = {
        --         animDict = 'amb@prop_human_bbq@male@base',
        --         anim = 'base',
        --         flags = 8,
        --     },
        --     prop = {
        --         model = false,
        --         bone = false,
        --         coords = false, -- vector 3 format
        --         rotation = false, -- vector 3 format
        --     },
        --     replenish = {'''
        --         type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
        --         replenish = math.random(20, 40),
        --         isAlcohol = false, -- if you want it to add alcohol count
        --         event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
        --         server = false -- if the event above is a server event
        --     }
        -- }
    }
}

Config.Fireworks = {
    delay = 5, -- time in s till it goes off
    items = {  -- firework items
        'firework1',
        'firework2',
        'firework3',
        'firework4'
    }
}

Config.BlacklistedScenarios = {
    types = {
        'WORLD_VEHICLE_MILITARY_PLANES_SMALL',
        'WORLD_VEHICLE_MILITARY_PLANES_BIG',
        'WORLD_VEHICLE_AMBULANCE',
        'WORLD_VEHICLE_POLICE_NEXT_TO_CAR',
        'WORLD_VEHICLE_POLICE_CAR',
        'WORLD_VEHICLE_POLICE_BIKE'
    },
    groups = {
        2017590552,
        2141866469,
        1409640232,
        `ng_planes`
    }
}

Config.BlacklistedVehs = {
    [`shamal`] = true,
    [`luxor`] = true,
    [`luxor2`] = true,
    [`jet`] = true,
    [`lazer`] = true,
    [`buzzard`] = true,
    [`buzzard2`] = true,
    [`annihilator`] = true,
    [`savage`] = true,
    [`titan`] = true,
    [`rhino`] = true,
    [`firetruck`] = true,
    [`mule`] = true,
    [`maverick`] = true,
    [`blimp`] = true,
    [`airtug`] = true,
    [`camper`] = true,
    [`hydra`] = true,
    [`oppressor`] = true,
    [`technical3`] = true,
    [`insurgent3`] = true,
    [`apc`] = true,
    [`tampa3`] = true,
    [`trailersmall2`] = true,
    [`halftrack`] = true,
    [`hunter`] = true,
    [`vigilante`] = true,
    [`akula`] = true,
    [`barrage`] = true,
    [`khanjali`] = true,
    [`caracara`] = true,
    [`blimp3`] = true,
    [`menacer`] = true,
    [`oppressor2`] = true,
    [`scramjet`] = true,
    [`strikeforce`] = true,
    [`cerberus`] = true,
    [`cerberus2`] = true,
    [`cerberus3`] = true,
    [`scarab`] = true,
    [`scarab2`] = true,
    [`scarab3`] = true,
    [`rrocket`] = true,
    [`ruiner2`] = true,
    [`deluxo`] = true,
    [`cargoplane2`] = true,
    [`voltic2`] = true
}

Config.BlacklistedWeapons = {
    [`WEAPON_RAILGUN`] = true,
}

Config.BlacklistedPeds = {
    [`s_m_y_ranger_01`] = true,
    [`s_m_y_sheriff_01`] = true,
    [`s_m_y_cop_01`] = true,
    [`s_f_y_sheriff_01`] = true,
    [`s_f_y_cop_01`] = true,
    [`s_m_y_hwaycop_01`] = true
}

Config.Objects = { -- for object removal
    { coords = vector3(266.09, -349.35, 44.74), heading = 0, length = 200, width = 200, model = 'prop_sec_barier_02b' },
    { coords = vector3(285.28, -355.78, 45.13), heading = 0, length = 200, width = 200, model = 'prop_sec_barier_02a' },
}

-- You may add more than 2 selections and it will bring up a menu for the player to select which floor be sure to label each section though
Config.Teleports = {
    [1] = {                   -- Elevator @ labs
        [1] = {               -- up
            poly = { coords = vector3(3540.74, 3675.59, 20.99), heading = 167.5, length = 2, width = 2 },
            allowVeh = false, -- whether or not to allow use in vehicle
            label = false     -- set this to a string for a custom label or leave it false to keep the default. if more than 2 options, label all options

        },
        [2] = { -- down
            poly = { coords = vector3(3540.74, 3675.59, 28.11), heading = 172.5, length = 2, width = 2 },
            allowVeh = false,
            label = false
        }
    },
    [2] = { --Coke Processing Enter/Exit
        [1] = {
            poly = { coords = vector3(909.49, -1589.22, 30.51), heading = 92.24, length = 2, width = 2 },
            allowVeh = false,
            label = '[E] Enter Coke Processing'
        },
        [2] = {
            poly = { coords = vector3(1088.81, -3187.57, -38.99), heading = 181.7, length = 2, width = 2 },
            allowVeh = false,
            label = '[E] Leave'
        }
    }
}

Config.CarWash = {
    dirtLevel = 0.1,                                                                                   -- threshold for the dirt level to be counted as dirty
    defaultPrice = 20,                                                                                 -- default price for the carwash
    locations = {
        [1] = { coords = vector3(174.81, -1736.77, 28.87), length = 7.0, width = 8.8, heading = 359 }, -- South Los Santos Carson Avenue
        [2] = { coords = vector3(25.2, -1391.98, 28.91), length = 6.6, width = 8.2, heading = 0 },     -- South Los Santos Innocence Boulevard
        [3] = { coords = vector3(-74.27, 6427.72, 31.02), length = 9.4, width = 8, heading = 315 },    -- Paleto Bay Boulevard
        [4] = { coords = vector3(1362.69, 3591.81, 34.5), length = 6.4, width = 8, heading = 21 },     -- Sandy Shores
        [5] = { coords = vector3(-699.84, -932.68, 18.59), length = 11.8, width = 5.2, heading = 0 }   -- Little Seoul Gas Station
    }
}
