mobs:register_mob("animalworld:toucan", {
stepheight = 6,
	type = "animal",
	passive = true,
        attack_type = "dogfight",
	attack_animals = false,
	reach = 2,
        damage = 1,
	hp_min = 5,
	hp_max = 30,
	armor = 100,
	collisionbox = {-0.3, -0.01, -0.3, 0.3, 0.5, 0.3},
	visual = "mesh",
	mesh = "Toucan.b3d",
	visual_size = {x = 1.0, y = 1.0},
	textures = {
	"texturetoucan.png", "texturetoucan.png", "texturetoucan.png", "texturetoucan.png", "texturetoucan.png",
	"texturetoucan.png", "texturetoucan.png", "texturetoucan.png", "texturetoucan.png", "texturetoucan.png",
	"texturetoucan.png", "texturetoucan.png", "texturetoucan.png", "texturetoucan.png", "texturetoucan.png",
	"texturetoucan.png", "texturetoucan.png", "texturetoucan.png", "texturetoucan.png", "texturetoucan.png"
	},
	sounds = {
		random = "animalworld_toucan",
	},
	makes_footstep_sound = true,
	walk_velocity = 2,
	run_velocity = 4,
	fall_speed = -1,
	fall_damage = 0,
	runaway = true,
        runaway_from = {"animalworld:bear", "animalworld:crocodile", "animalworld:tiger", "animalworld:spider", "animalworld:spidermale", "animalworld:shark", "animalworld:hyena", "animalworld:kobra", "animalworld:monitor", "animalworld:snowleopard", "animalworld:volverine", "livingfloatlands:deinotherium", "livingfloatlands:carnotaurus", "livingfloatlands:lycaenops", "livingfloatlands:smilodon", "livingfloatlands:tyrannosaurus", "livingfloatlands:velociraptor", "animalworld:divingbeetle", "animalworld:scorpion", "animalworld:polarbear", "animalworld:leopardseal", "animalworld:stellerseagle"},
	jump = true,
        jump_height = 8,
	stepheight = 6,
	drops = {
		{name = "animalworld:chicken_raw", chance = 1, min = 1, max = 1},
	        {name = "animalworld:chicken_feather", chance = 1, min = 1, max = 1},
	
	},
	water_damage = 1,
	lava_damage = 4,
	light_damage = 0,
	fear_height = 10,
	animation = {
		speed_normal = 100,
		stand_speed = 50,
		stand_start = 0,
		stand_end = 100,
		walk_start = 100,
		walk_end = 200,
		fly_start = 250, -- swim animation
		fly_end = 350,
		-- 50-70 is slide/water idle
	},

fly_in = {"air"},
	floats = 0,
	follow = {
		"fishing:bait:worm", "ethereal:worm", "farming:melon_slice", "farming:pineapple", "ethereal:banana", "ethereal:orange", "farming:grapes"
	},
	
view_range = 4,

	on_rightclick = function(self, clicker)

		-- feed or tame
		if mobs:feed_tame(self, clicker, 4, false, true) then return end
		if mobs:protect(self, clicker) then return end
		if mobs:capture_mob(self, clicker, 5, 50, 80, false, nil) then return end
	end,
})


if minetest.get_modpath("ethereal") then
	spawn_on = {"default:dirt_with_rainforest_litter", "ethereal:grove_dirt"}
end

if not mobs.custom_spawn_animalworld then
mobs:spawn({
	name = "animalworld:toucan",
	nodes = {"default:dirt_with_rainforest_litter"},
	min_light = 0,
	interval = 60,
	chance = 8000, -- 15000
	active_object_count = 2,
	min_height = 15,
	max_height = 50,
	day_toggle = true,
})
end

mobs:register_egg("animalworld:toucan", ("Toucan"), "atoucan.png")

