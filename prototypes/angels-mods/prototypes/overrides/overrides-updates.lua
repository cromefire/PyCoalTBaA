-- DATA UPDATES STAGE OVERRIDES
if mods['angelsrefining'] then
    fun.global_item_replacer('coke', 'solid-coke')
    fun.global_item_replacer('limestone', 'solid-limestone')
    fun.global_item_replacer('acidgas', 'gas-acid')
    fun.global_item_replacer('salt', 'solid-salt')
    fun.global_item_replacer('sand', 'solid-sand')
    fun.global_item_replacer('syngas', 'gas-synthesis')
    fun.global_item_replacer('methanol', 'gas-methanol')
    fun.global_item_replacer('carbon-dioxide', 'gas-carbon-dioxide')
    fun.global_item_replacer('carbon', 'solid-carbon')
    fun.global_item_replacer('lime', 'solid-lime')
    fun.global_item_replacer('angels-plate-chrome', 'chromium')
    fun.global_item_replacer('solid-clay', 'clay')
    fun.global_item_replacer('phenolic-board', 'phenolicboard')
    fun.global_item_replacer('fibreglass-board', 'fiberglass')
    fun.global_item_replacer('fertiliser', 'py-fertilizer')
    fun.global_item_replacer('solid-fertilizer', 'py-fertilizer')
    fun.global_item_replacer('benzene', 'gas-benzene')
    fun.global_item_replacer('propene', 'gas-propene')
    fun.global_item_replacer('acetone', 'gas-acetone')
    fun.global_item_replacer('chloromethane', 'gas-chlor-methane')
    fun.global_item_replacer('methane', 'gas-methane')
    fun.global_item_replacer('methanal', 'gas-formaldehyde')
    fun.global_item_replacer('ammonia', 'gas-ammonia')
    fun.global_item_replacer('ech', 'gas-epichlorhydrin')
    fun.global_item_replacer('ethylene', 'gas-ethylene')
    fun.global_item_replacer('glass-fiber', 'angels-coil-glass-fiber')
    fun.global_item_replacer('wooden-board', 'fiberboard')
    fun.global_item_replacer('advanced-processing-unit', 'intelligent-unit')
    fun.global_item_replacer('multi-layer-circuit-board', 'pcb4')
    fun.global_item_replacer('electronic-components', 'transistor')
    fun.global_item_replacer('basic-electronic-components', 'resistor2')
    fun.global_item_replacer('processing-electronics', 'kondo-processor')
    fun.global_item_replacer('intergrated-electronics', 'microchip')
    fun.global_item_replacer('module-processor-board', 'pcb2')
    fun.global_item_replacer('module-processor-board-2', 'pcb3')
    fun.global_item_replacer('module-processor-board-3', 'pcb4')
    fun.global_item_replacer('solid-sodium-chlorate', 'sodium-chlorate')
    fun.global_item_replacer('black-liquor', 'liquid-black-liquor')
    fun.global_item_replacer('acetic-acid', 'liquid-acetic-acid')
    fun.global_item_replacer('bio-raw-meat', 'meat')
    fun.global_item_replacer('liquid-molten-aluminium', 'molten-aluminium')
    fun.global_item_replacer('liquid-molten-copper', 'molten-copper')
    fun.global_item_replacer('liquid-molten-iron', 'molten-iron')
    fun.global_item_replacer('liquid-molten-lead', 'molten-lead')
    fun.global_item_replacer('liquid-molten-silver', 'molten-silver')
    fun.global_item_replacer('liquid-molten-nickel', 'molten-nickel')
    fun.global_item_replacer('liquid-molten-steel', 'molten-steel')
    fun.global_item_replacer('liquid-molten-tin', 'molten-tin')
    fun.global_item_replacer('liquid-molten-titanium', 'molten-titanium')
    fun.global_item_replacer('liquid-molten-zinc', 'molten-zinc')
    fun.global_item_replacer('liquid-molten-chrome', 'molten-chromium')
    fun.global_item_replacer('hydrogen', 'gas-hydrogen')
    fun.global_item_replacer('chlorine', 'gas-chlorine')
    fun.global_item_replacer('oxygen', 'gas-oxygen')
    fun.global_item_replacer('nitrogen', 'gas-nitrogen')
    fun.global_item_replacer('hydrogen-chloride', 'gas-hydrogen-chloride')
    fun.global_item_replacer('solid-salt', 'salt')
    fun.global_item_replacer('solid-sodium-carbonate', 'sodium-carbonate')
    fun.global_item_replacer('solid-sodium-hydroxide', 'sodium-hydroxide')
    fun.global_item_replacer('solid-sodium-sulfate', 'sodium-sulfate')
    -- fun.global_item_replacer('petri-dish', 'empty-petri-dish')

    -- Fluid Converter Recipes
    if mods['angelspetrochem'] then
        angelsmods.functions.make_converter('acidgas', 'gas-acid')
        angelsmods.functions.make_converter('syngas', 'gas-synthesis')
        angelsmods.functions.make_converter('methanol', 'gas-methanol')
        angelsmods.functions.make_converter('carbon-dioxide', 'gas-carbon-dioxide')
        angelsmods.functions.make_converter('gas-benzene', 'benzene')
        angelsmods.functions.make_converter('gas-propene', 'propene')
        angelsmods.functions.make_converter('chloromethane', 'gas-chlor-methane')
        angelsmods.functions.make_converter('methane', 'gas-methane')
        angelsmods.functions.make_converter('ammonia', 'gas-ammonia')
        angelsmods.functions.make_converter('ech', 'gas-epichlorhydrin')
        angelsmods.functions.make_converter('black-liquor', 'liquid-black-liquor')
        angelsmods.functions.make_converter('acetic-acid', 'liquid-acetic-acid')
    end

    -- replace miner fluid
    if data.raw.resource['borax'] ~= nil then
        if data.raw.fluid['gas-synthesis'] ~= nil then
            data.raw.resource['borax'].minable.required_fluid = 'gas-synthesis'
        end
    end

    if data.raw.resource['phosphate-rock'] ~= nil then
        if data.raw.fluid['gas-synthesis'] ~= nil then
            data.raw.resource['phosphate-rock'].minable.required_fluid = 'gas-synthesis'
        end
    end

    -- merge angels flotation cell into pys cell
    if mods['pyrawores'] then
        -- mk01
        fun.global_item_replacer('ore-floatation-cell', 'flotation-cell-mk01')
        table.insert(data.raw['assembling-machine']['flotation-cell-mk01'].crafting_categories, 'ore-refining-t2')
        data.raw.recipe['ore-floatation-cell'] = nil
        fun.remove_recipe_unlock('ore-floatation-cell')
        -- mk02
        fun.global_item_replacer('ore-floatation-cell-2', 'flotation-cell-mk02')
        table.insert(data.raw['assembling-machine']['flotation-cell-mk02'].crafting_categories, 'ore-refining-t2')
        data.raw.recipe['ore-floatation-cell-2'] = nil
        fun.remove_recipe_unlock('ore-floatation-cell-2')
        -- mk03
        fun.global_item_replacer('ore-floatation-cell-3', 'flotation-cell-mk03')
        table.insert(data.raw['assembling-machine']['flotation-cell-mk03'].crafting_categories, 'ore-refining-t2')
        data.raw.recipe['ore-floatation-cell-3'] = nil
        fun.remove_recipe_unlock('ore-floatation-cell-3')
        -- add category to py mk04
        table.insert(data.raw['assembling-machine']['flotation-cell-mk04'].crafting_categories, 'ore-refining-t2')
    end

    if mods['angelssmelting'] then
        fun.global_item_replacer('silicon','angels-mono-silicon')
    end

end
