# 🍔 Casey’s Diner — Sistema Completo de Restaurante  
Sistema completo de restaurante para QBCore + ox_inventory, incluindo:

- Crafting organizado por estações (Entradas, Grill, Bebidas, Sobremesas)  
- NPC fornecedor que vende todos os ingredientes  
- Stash de estoque e balcão  
- Menu visual com cardápio (NUI)  
- Sistema de serviço (Duty)  
- Compatível com ox_lib / qb-target  

## add on jobs.lua

    ['caseysdiner'] = {
        label = "Casey's Diner",
        defaultDuty = true,
        grades = {
            ['0'] = { name = 'Atendente', payment = 300 },
            ['1'] = { name = 'Cozinheiro', payment = 350 },
            ['2'] = { name = 'Chef de Cozinha', payment = 400 },
            ['3'] = { name = 'Supervisor', isboss = true, bankAuth = true, payment = 450 },
            ['4'] = { name = 'Gerente', isboss = true, bankAuth = true, payment = 500 },
        }
    },

# ✅ REQUISITOS

| Script | Função |
|--------|--------|
| **qb-core** | Framework base |
| **qb-target** | Interações |
| **ox_inventory** | Sistema de inventário |
| **ox_lib** | Context menus e progressBar |
| **prism_uipack (opcional)** | UI moderna |

---

# 🥫 ITENS QUE DEVEM SER ADICIONADOS AO `ox_inventory/data/items.lua`

## Ingredientes – SUPPLIES
```lua
['bread'] = {label = 'Pão', weight = 100, stack = true},
['butter'] = {label = 'Manteiga', weight = 100, stack = true},
['snake_meat'] = {label = 'Carne de Cascavel', weight = 250, stack = true},
['spice_mix'] = {label = 'Mix de Temperos', weight = 50, stack = true},

['coyote_meat'] = {label = 'Carne de Coiote', weight = 300, stack = true},
['beans'] = {label = 'Feijão', weight = 100, stack = true},
['tomato_sauce'] = {label = 'Molho de Tomate', weight = 120, stack = true},

['brioche_bun'] = {label = 'Pão Brioche', weight = 100, stack = true},
['deer_meat'] = {label = 'Carne de Cervo', weight = 300, stack = true},
['boar_bacon'] = {label = 'Bacon de Javali', weight = 120, stack = true},
['buffalo_cheese'] = {label = 'Queijo de Búfala', weight = 100, stack = true},
['lettuce'] = {label = 'Alface', weight = 50, stack = true},
['tomato'] = {label = 'Tomate', weight = 80, stack = true},

['cougar_meat'] = {label = 'Carne de Sussuarana', weight = 300, stack = true},
['bbq_sauce'] = {label = 'Molho Barbecue', weight = 80, stack = true},
['fries'] = {label = 'Batata Pré-cozida', weight = 150, stack = true},

['pancake_mix'] = {label = 'Mistura para Panqueca', weight = 120, stack = true},
['pumpkin_puree'] = {label = 'Purê de Abóbora', weight = 150, stack = true},
['pie_dough'] = {label = 'Massa de Torta', weight = 100, stack = true},
['vanilla_cream'] = {label = 'Chantilly de Baunilha', weight = 80, stack = true},

## Ingredientes – DRINKS / LIQUIDS
['coffee_beans'] = {label = 'Grãos de Café', weight = 80, stack = true},
['milk'] = {label = 'Leite', weight = 120, stack = true},
['sugar'] = {label = 'Açúcar', weight = 80, stack = true},
['blueberry'] = {label = 'Mirtilo', weight = 60, stack = true},
['wild_honey'] = {label = 'Mel Selvagem', weight = 80, stack = true},
['fermented_honey'] = {label = 'Mel Fermentado', weight = 80, stack = true},

['beer_keg'] = {label = 'Barril de Chopp', weight = 5000, stack = false},
['drpepper_syrup'] = {label = 'Xarope Dr Pepper', weight = 60, stack = true},
['soda_water'] = {label = 'Água Gaseificada', weight = 80, stack = true},
['water'] = {label = 'Água', weight = 80, stack = true},
## Pratos Prontos (Craft Final)
['bread_bread'] = {label = 'Pão com Pão', weight = 120},
['cascavel_strips'] = {label = 'Tirinhas de Cascavel', weight = 150},

['coyote_chili'] = {label = 'Chili de Coiote', weight = 300},
['roadkiller_burger'] = {label = 'Roadkiller Burger', weight = 350},
['sussuarana_bbq'] = {label = 'Sussuarana BBQ', weight = 350},

['coffee_strong'] = {label = 'Café Forte', weight = 150},
['milkshake_blueberry'] = {label = 'Milkshake de Blueberry', weight = 200},
['hidromel'] = {label = 'Hidromel', weight = 200},
['chopp_bigiron'] = {label = 'Chopp Big Iron', weight = 250},
['drpepper'] = {label = 'Dr Pepper', weight = 150},

['pancake_honey_blue'] = {label = 'Panquecas com Mel e Mirtilo', weight = 200},
['pumpkinpie_vanilla'] = {label = 'Torta de Abóbora com Baunilha Selvagem', weight = 250},
