local electricRailPlanner = table.deepcopy(data.raw["rail-planner"]["rail"])
electricRailPlanner.name = "electric-rail"
electricRailPlanner.icons= {
   {
      icon=electricRailPlanner.icon,
      tint={r=0,g=0,b=1,a=0.3}
   }
}
electricRailPlanner.place_result = "electric-straight-rail"
electricRailPlanner.straight_rail = "electric-straight-rail"
electricRailPlanner.curved_rail = "electric-curved-rail"

local recipe = table.deepcopy(data.raw.recipe["rail"])
recipe.enabled = true
recipe.name = "electric-rail"
recipe.ingredients = {{"copper-plate",1}}
recipe.result = "electric-rail"

data:extend{electricRailPlanner,recipe}
