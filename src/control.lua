-- since items can only can inherit from form other item (e.g straight-rail)
-- we create a 'compound' item, that gets autmatically added and deleted along with its counterpart

function BuiltEntity(event)
    if event.created_entity.name == "electric-straight-rail" then
        local e = event.created_entity
        local s = e.surface
        local X = e.position.x
        local Y = e.position.y
        local l = s.create_entity {
            name = "electric-straight-rail-volt",
            position = {X, Y},
            force = game.forces.neutral
        }
        l.destructible = false
    end

    if event.created_entity.name == "electric-curved-rail" then
        local e = event.created_entity
        local s = e.surface
        local X = e.position.x
        local Y = e.position.y
        local l = s.create_entity {
            name = "electric-curved-rail-volt",
            position = {X, Y},
            force = game.forces.neutral
        }
        l.destructible = false
    end
end

function MinedEntity(event)
    if event.entity.name == "electric-straight-rail" then
        local b = event.entity
        local X = b.position.x
        local Y = b.position.y
        lamp = b.surface.find_entity("electric-straight-rail-volt", {X, Y})
        if lamp ~= nil then lamp.destroy() end
    end
    
    if event.entity.name == "electric-curved-rail" then
        local b = event.entity
        local X = b.position.x
        local Y = b.position.y
        lamp = b.surface.find_entity("electric-curved-rail-volt", {X, Y})
        if lamp ~= nil then lamp.destroy() end
    end
end

script.on_event(defines.events.on_built_entity, BuiltEntity)
script.on_event(defines.events.on_robot_built_entity, BuiltEntity)
script.on_event(defines.events.on_pre_player_mined_item, MinedEntity)
script.on_event(defines.events.on_entity_died, MinedEntity)
script.on_event(defines.events.on_robot_pre_mined, MinedEntity)
