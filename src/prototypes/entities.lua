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
        -- collision box is hardcoded for rails as they need to be different for different orientations (diagonal or straight) and to
        -- avoid unexpected changes in the way rail blocks are merged
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
        -- collision box is hardcoded for rails as to avoid unexpected changes in the way rail blocks are merged
        selection_box = {{-1.7, -0.8}, {1.7, 0.8}},
        pictures = rail_pictures(),
        placeable_by = {item = "electric-rail", count = 4}
    }
})
