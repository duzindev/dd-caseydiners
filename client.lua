local stations = Config.Stations
local ox = exports.ox_inventory

local function formatIngredients(tbl)
    local text = ""
    for item, amount in pairs(tbl) do
        local itemData = exports.ox_inventory:Items(item)
        local label = itemData and itemData.label or item
        text = text .. string.format("%sx %s\n", amount, label)
    end
    return text
end

CreateThread(function()
    local blip = AddBlipForCoord(Config.Blip.coords.x, Config.Blip.coords.y, Config.Blip.coords.z)
    SetBlipSprite(blip, Config.Blip.sprite)
    SetBlipScale(blip, Config.Blip.scale)
    SetBlipColour(blip, Config.Blip.color)
    SetBlipAsShortRange(blip, true)
    BeginTextCommandSetBlipName('STRING')
    AddTextComponentSubstringPlayerName(Config.Blip.label)
    EndTextCommandSetBlipName(blip)
end)


exports.ox_target:addBoxZone({
    coords = stations.Counter,
    size = vec3(1.4, 0.8, 1.0),
    rotation = 0.0,
    debug = false,
    options = {
        {
            name = 'caseys_counter',
            event = 'dd-caseysdiner:client:openCounter',
            icon = 'fa-solid fa-box',
            label = 'Balcão',
            distance = 2.0
        }
    }
})

exports.ox_target:addBoxZone({
    coords = stations.Storage,
    size = vec3(1.0, 1.0, 1.0),
    rotation = 0.0,
    debug = false,
    options = {
        {
            name = 'caseys_storage',
            event = 'dd-caseysdiner:client:openStorage',
            icon = 'fa-solid fa-warehouse',
            label = 'Depósito',
            groups = Config.Job,
            distance = 2.0
        }
    }
})

exports.ox_target:addBoxZone({
    coords = stations.Prep,
    size = vec3(1.0, 1.0, 1.0),
    rotation = 0.0,
    debug = false,
    options = {
        {
            name = 'caseys_prep',
            event = 'dd-caseysdiner:client:craftPrepMenu',
            icon = 'fa-solid fa-bread-slice',
            label = 'Entradas',
            groups = Config.Job,
            distance = 2.0
        }
    }
})

exports.ox_target:addBoxZone({
    coords = stations.Grill,
    size = vec3(1.0, 1.0, 1.0),
    rotation = 0.0,
    debug = false,
    options = {
        {
            name = 'caseys_grill',
            event = 'dd-caseysdiner:client:craftGrillMenu',
            icon = 'fa-solid fa-burger',
            label = 'Pratos Quentes',
            groups = Config.Job,
            distance = 2.0
        }
    }
})

exports.ox_target:addBoxZone({
    coords = stations.Dessert,
    size = vec3(1.0, 1.0, 1.0),
    rotation = 0.0,
    debug = false,
    options = {
        {
            name = 'caseys_dessert',
            event = 'dd-caseysdiner:client:craftDessertMenu',
            icon = 'fa-solid fa-ice-cream',
            label = 'Sobremesas',
            groups = Config.Job,
            distance = 2.0
        }
    }
})

exports.ox_target:addBoxZone({
    coords = stations.Drinks,
    size = vec3(1.0, 1.0, 1.0),
    rotation = 0.0,
    debug = false,
    options = {
        {
            name = 'caseys_drinks_craft',
            event = 'dd-caseysdiner:client:craftDrinksMenu',
            icon = 'fa-solid fa-mug-hot',
            label = 'Preparar Bebidas',
            groups = Config.Job,
            distance = 2.0
        }
    }
})

exports.ox_target:addBoxZone({
    coords = stations.Duty,
    size = vec3(1.0, 1.0, 1.0),
    rotation = 0.0,
    debug = false,
    options = {
        {
            name = 'caseys_duty',
            event = 'dd-caseysdiner:client:duty',
            icon = 'fa-solid fa-user-check',
            label = 'Entrar / Sair de Serviço',
            groups = Config.Job,
            distance = 2.0
        }
    }
})

exports.ox_target:addBoxZone({
    coords = vec3(1040.1021, 2662.8369, 40.15),
    size = vec3(1.0, 1.0, 1.0),
    rotation = 0.0,
    debug = false,
    options = {
        {
            name = "caseys_menu",
            event = "dd-caseysdiner:client:openMenuImage",
            icon = "fa-solid fa-utensils",
            label = "Ver Cardápio",
            distance = 2.0
        }
    }
})

exports.ox_target:addBoxZone({ 
        coords = vector3(1039.66, 2662.23, 38.91), 
        size = vec3(0.5, 0.5, 4.0), rotation = 0,
		options = { { 
            event = "jim-payments:client:Charge", 
            icon = "fas fa-credit-card", 
            label = "Cobrar Cliente", 
            job = "caseysdiner", 
			img = "<center><p><img src=https://i.imgur.com/03eA7N0.png width=100px></p>", 
            distance = 2.0 
        } 
    } 
})

RegisterNetEvent('dd-caseysdiner:client:openCounter', function()
    ox:openInventory('stash', { id = Config.CounterStash.id })
end)

RegisterNetEvent('dd-caseysdiner:client:openStorage', function()
    ox:openInventory('stash', { id = Config.StorageStash.id })
end)

RegisterNetEvent('dd-caseysdiner:client:duty', function()
    TriggerServerEvent('dd-caseysdiner:server:dutyToggle')
end)

RegisterNetEvent('dd-caseysdiner:client:craftPrepMenu', function()
    local menu = {}
    for _, v in ipairs(Config.Craft.Prep) do
        menu[#menu+1] = {
            title = v.label,
            description = formatIngredients(v.ingredients),
            event = 'dd-caseysdiner:client:startCraft',
            args = v
        }
    end
    lib.registerContext({
        id = 'caseys_prep_menu',
        title = 'Entradas',
        options = menu
    })
    lib.showContext('caseys_prep_menu')
end)

RegisterNetEvent('dd-caseysdiner:client:craftGrillMenu', function()
    local menu = {}
    for _, v in ipairs(Config.Craft.Grill) do
        menu[#menu+1] = {
            title = v.label,
            description = formatIngredients(v.ingredients),
            event = 'dd-caseysdiner:client:startCraft',
            args = v
        }
    end
    lib.registerContext({
        id = 'caseys_grill_menu',
        title = 'Pratos Quentes',
        options = menu
    })
    lib.showContext('caseys_grill_menu')
end)

RegisterNetEvent('dd-caseysdiner:client:craftDrinksMenu', function()
    local menu = {}
    for _, v in ipairs(Config.Craft.Drinks) do
        menu[#menu+1] = {
            title = v.label,
            description = formatIngredients(v.ingredients),
            event = 'dd-caseysdiner:client:startCraft',
            args = v
        }
    end

    lib.registerContext({
        id = 'caseys_drinks_menu',
        title = 'Bebidas',
        options = menu
    })
    lib.showContext('caseys_drinks_menu')
end)

RegisterNetEvent('dd-caseysdiner:client:craftDessertMenu', function()
    local menu = {}
    for _, v in ipairs(Config.Craft.Desserts) do
        menu[#menu+1] = {
            title = v.label,
            description = formatIngredients(v.ingredients),
            event = 'dd-caseysdiner:client:startCraft',
            args = v
        }
    end

    lib.registerContext({
        id = 'caseys_dessert_menu',
        title = 'Sobremesas',
        options = menu
    })
    lib.showContext('caseys_dessert_menu')
end)

RegisterNetEvent('dd-caseysdiner:client:startCraft', function(recipe)
    local ok = lib.progressBar({
        duration = 5000,
        label = "Preparando...",
        useWhileDead = false,
        canCancel = false,
        disable = {
            move = true, car = true, combat = true
        },
        anim = {
            dict = 'anim@heists@prison_heiststation@cop_reactions',
            clip = 'cop_b_idle'
        }
    })
    if ok then
        TriggerServerEvent("dd-caseysdiner:server:finishCraft", recipe)
    end
end)

RegisterNetEvent("dd-caseysdiner:client:openMenuImage", function()
    SetNuiFocus(true, true)
    SendNUIMessage({
        action = "open"
    })
end)

RegisterNUICallback("close", function()
    SetNuiFocus(false, false)
end)



