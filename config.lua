Config = {}

Config.Job = 'caseysdiner'

Config.Stations = {
    Blip = vec3(1037.4981, 2664.9987, 39.447566),

    Counter = vec3(1037.7039, 2663.3908, 39.005714),
    Storage = vec3(1035.514, 2652.1262, 39.388092),

    Drinks = vec3(1034.9737, 2662.1118, 40.55051),
    Prep = vec3(1036.7702, 2655.2553, 40.071197),
    Grill = vec3(1035.5848, 2655.2753, 40.087444),
    Dessert = vec3(1035.7009, 2658.8417, 40.226779),

    Duty = vec3(1038.7606, 2652.0102, 39.190578)
}

Config.Blip = {
    coords = vec3(1037.4981, 2664.9987, 39.447566),
    sprite = 214,
    scale = 0.7,
    color = 49,
    label = "Casey's Diner"
}

Config.StorageStash = {
    id = 'caseys_storage',
    label = 'Estoque do Casey\'s Diner',
    slots = 250,
    weight = 500000
}

Config.CounterStash = {
    id = 'caseys_counter',
    label = 'Balcão do Casey\'s Diner',
    slots = 25,
    weight = 100000
}

Config.ManagerGroups = {
    caseysdiner = true
}

Config.Craft = {
    Prep = {
        { 
            item = 'bread_bread', 
            label = 'Pão com Pão',
            ingredients = { burger_bun = 2, butter = 1 } 
        },
        { 
            item = 'cascavel_strips', 
            label = 'Tirinhas de Cascavel',
            ingredients = { snake_meat = 1, butter = 1 } 
        },
        { 
            item = 'fries', 
            label = 'Batatas Fritas (Pre-cozidas)',
            ingredients = { potato = 1 } 
        }
    },

    Grill = {
        { 
            item = 'coyote_chilli',
            label = 'Chili de Coyote',
            ingredients = { beans = 2, sauce = 1, coyote_meat = 1, spice_mix = 1 } 
        },

        { 
            item = 'roadkiller_burger',
            label = 'Roadkiller Burger', 
            ingredients = {
                burgershot_bread = 1,
                deer_meat = 1,
                boar_leg = 1,
                cheese = 1,
                lettuce = 1,
                tomato_sauce = 1
            }
        },

        { 
            item = 'sussuarana_bbq',
            label = 'Sussuarana BBQ',
            ingredients = { mtlion_beef = 1, bbq_sauce = 1, fries = 1 } 
        }
    },

    Drinks = {
        { 
            item = 'coffee_strong',
            label = 'Cafézinhuuu',
            ingredients = { coffee_beans = 1, water_bottle = 1 } 
        },
        { 
            item = 'milkshake_blueberry',
            label = 'Milkshake de Blueberry',
            ingredients = { milk_bottle = 1, blueberry = 2, sugar = 1 } 
        },
        { 
            item = 'hidromel',
            label = 'Hidromel',
            ingredients = { wild_honey = 2, fermented_honey = 1 } 
        },
        { 
            item = 'chopp_bigiron',
            label = 'Chopp Big Iron',
            ingredients = { beer_keg = 1 } 
        },
        { 
            item = 'drpepper',
            label = 'Dr Pepper',
            ingredients = { drpepper_syrup = 1, soda_water = 1 }
        }
    },

    Desserts = {
        { 
            item = 'pancake_honey_blue',
            label = 'Panquecas com Mel e Mirtilo',
            ingredients = { pancake_mix = 1, wild_honey = 1, blueberry = 1 }
        },
        { 
            item = 'pumpkinpie_vanilla',
            label = 'Torta de Abóbora com Baunilha Selvagem',
            ingredients = { pumpkin_puree = 2, sugar = 1, vanilla_cream = 1, pie_dough = 1 }
        },
        { 
            item = 'pudim_bread',
            label = 'Pudim Com Pão',
            ingredients = { milk_bottle = 2, sugar = 1, burger_bun = 1 }
        },
    }
}

