--[[
local recipe_count = 0
local fluid_count = 0
local gas_count = 0

for r, recipe in pairs(data.raw.recipe) do
    if recipe.category == 'py-incineration' then
        recipe_count = recipe_count + 1
    end
    if recipe.category == 'py-runoff' then
        fluid_count = fluid_count + 1
    end
    if recipe.category == 'py-venting' then
        gas_count = gas_count + 1
    end
end

log(recipe_count)
log(fluid_count)
log(gas_count)
]]--


-- Don't work with replacer
table.insert(data.raw["recipe"]["seed-extractor"].ingredients, {
    type = "item",
    name = "pcb1",
    amount = 4
})

table.insert(data.raw["recipe"]["mech-brain"].ingredients, {
    type = "item",
    name = "pcb4",
    amount = 40
})