data:extend({
    {
        type = "straight-rail",
        name = "electric-straight-rail",
        icon = "__base__/graphics/icons/rail.png",
        icon_size = 32,
        flags = {
            "placeable-neutral", "player-creation", "building-direction-8-way"
        },
        minable = {mining_time = 0.2, result = "electric-rail"},
        max_health = 100,
        corpse = "straight-rail-remnants",
        resistances = {
            {type = "fire", percent = 100}, {type = "acid", percent = 80}
        },
        selection_box = {{-0.7, -0.8}, {0.7, 0.8}},
        pictures = rail_pictures()

    }, {
        type = "curved-rail",
        name = "electric-curved-rail",
        icon = "__base__/graphics/icons/curved-rail.png",
        icon_size = 32,
        flags = {
            "placeable-neutral", "player-creation", "building-direction-8-way"
        },
        minable = {mining_time = 0.2, result = "electric-rail", count = 4},
        max_health = 200,
        corpse = "curved-rail-remnants",
        resistances = {
            {type = "fire", percent = 100}, {type = "acid", percent = 80}
        },
        selection_box = {{-1.7, -0.8}, {1.7, 0.8}},
        pictures = rail_pictures(),
        placeable_by = {item = "electric-rail", count = 4}
    }, {
        type = "electric-pole",
        name = "electric-straight-rail-volt",
        icon = "__base__/graphics/icons/rail.png",
        icon_size = 32,
        order = "a[energy]-d[electric-rail]",
        flags = {"placeable-off-grid", "not-on-map"},
        friendly_map_color = {r = 0.4, g = 0.4, b = 0.4, a = 1},
        selectable_in_game = false,
        max_health = 180,
        corpse = "small-remnants",
        radius_visualisation_picture = {
            filename = "__base__/graphics/entity/small-electric-pole/electric-pole-radius-visualization.png",
            width = 12,
            height = 12,
            priority = "extra-high-no-scale"
        },
        resistances = {
            {type = "impact", percent = 90}, {type = "fire", percent = 100}
        },
        collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
        selection_box = {{-0.4, -0.4}, {0.4, 0.4}},
        drawing_box = {{-0.5, -4.0}, {1.5, 0.5}},
        maximum_wire_distance = 2,
        supply_area_distance = 2,
        pictures = {
            filename = "__electric-rail__/graphics/transparent32.png",
            priority = "extra-high",
            width = 32,
            height = 32,
            direction_count = 1,
            shift = {0,0}
        },
        picture_off = blank,
        picture_on = blank,
        connection_points = {
            {shadow = {copper = {0, 0}}, wire = {copper = {0, 0}}}
        }
    }, {
        type = "electric-pole",
        name = "electric-curved-rail-volt",
        icon = "__base__/graphics/icons/rail.png",
        icon_size = 32,
        order = "a[energy]-d[electric-rail]",
        flags = {"placeable-off-grid", "not-on-map"},
        friendly_map_color = {r = 0.4, g = 0.4, b = 0.4, a = 1},
        selectable_in_game = false,
        max_health = 180,
        corpse = "small-remnants",
        radius_visualisation_picture = {
            filename = "__base__/graphics/entity/small-electric-pole/electric-pole-radius-visualization.png",
            width = 12,
            height = 12,
            priority = "extra-high-no-scale"
        },
        resistances = {
            {type = "impact", percent = 90}, {type = "fire", percent = 100}
        },
        collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
        selection_box = {{-0.4, -0.4}, {0.4, 0.4}},
        drawing_box = {{-0.5, -4.0}, {1.5, 0.5}},
        maximum_wire_distance = 12,
        supply_area_distance = 3,
        pictures = {
            filename = "__electric-rail__/graphics/transparent32.png",
            priority = "extra-high",
            width = 32,
            height = 32,
            direction_count = 1,
            shift = {0,0}
        },
        picture_off = blank,
        picture_on = blank,
        connection_points = {
            {shadow = {copper = {0, 0}}, wire = {copper = {0, 0}}}
        }
    }
})
