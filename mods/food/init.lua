-- RUBENFOOD MOD
-- A mod written by rubenwardy that adds
-- food to the minetest game
-- =====================================
-- >> rubenfood/init.lua
-- inits the mod
-- =====================================
-- [regis-item] Cup
-- [craft] Cup
-- [regis-food] Cigerette (-4)
-- =====================================


----------------------Load Files-----------------------------
dofile(minetest.get_modpath("food").."/support.lua")

--dofile(minetest.get_modpath("food").."/food/meats.lua") Nothing yet
dofile(minetest.get_modpath("food").."/food/baking.lua")

dofile(minetest.get_modpath("food").."/drinks/juice.lua")



----------------------------Cup------------------------------

minetest.register_craftitem("food:mug",{
	description = "Mug",
	inventory_image = "food_mug.png",
})

minetest.register_craftitem("food:clay_mug",{
	description = "Clay Mug",
	inventory_image = "food_clay_mug.png",
})

minetest.register_craft({
	output = '"food:clay_mug" 1',
	recipe = {
		{"default:clay_lump","","default:clay_lump"},
		{"default:clay_lump","","default:clay_lump"},
		{"default:clay_lump","default:clay_lump","default:clay_lump"},
	}
})

minetest.register_craft({
	type = "cooking",
	output = "food:mug",
	recipe = "food:clay_mug",
})

-----------------------------Bowl-------------------------------

minetest.register_craftitem("food:bowl",{
	description = "Bowl",
	inventory_image = "food_bowl.png",
})


-----------------------------Sugar------------------------------
minetest.register_craftitem("food:sugar", {
	description = "Sugar",
	inventory_image = "food_sugar.png",
})
minetest.register_craft({
	output = '"food:sugar" 20',
	recipe = {
		{'"default:papyrus"'},

	}
})
