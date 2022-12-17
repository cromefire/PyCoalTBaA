
if mods['bobelectronics'] and mods['pyhightech'] then
    fun.global_item_replacer('basic-circuit-board', 'pcb1')
    fun.global_item_replacer('circuit-board', 'pcb2')
    fun.global_item_replacer('superior-circuit-board', 'pcb3')
    fun.global_item_replacer('multi-layer-circuit-board', 'pcb4')
    data.raw.recipe['basic-circuit-board'].enabled = false

    data.raw.recipe['convert-pcb1'] = {
        enabled = 1,
        name = 'convert-pcb1',
        type = 'recipe',
        ingredients = {
            {
                type = 'item',
                name = 'pcb1',
                amount = 1
            }
        },
        result = 'basic-circuit-board'
    }

    local mechRecep = table.deepcopy(data.raw.recipe["mech-brain"])
    mechRecep.ingredients[2].name = "pcb4"
    data.raw.recipe['mech-brain-alt'] = mechRecep
end

if mods['boblogistics'] and settings.startup['bobmods-logistics-inserteroverhaul'].value == true then
    fun.ingredient_replace('rare-earth-mine','fast-inserter','red-inserter')
end
