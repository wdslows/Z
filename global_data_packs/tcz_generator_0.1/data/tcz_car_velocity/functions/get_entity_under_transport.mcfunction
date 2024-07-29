execute as @e[distance=0.1..4,tag=!transport,type=!item,type=!player,type=!item_frame] run tag @s add entity_under_transport
execute as @e[tag=entity_under_transport,distance=2..] run tag @s remove entity_under_transport

execute as @e[tag=entity_under_transport,distance=0.1..2] at @s run function tcz_car_velocity:set_impact_to_entity


#nbt=!{RootVehicle:{Entity:{Motion:[0.0d,0.0d,0.0d]}}}