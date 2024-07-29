execute as @e[tag=transport,tag=!fueled] run function tcz_fuel_filler:get_fuel
execute as @e[tag=transport,tag=!with_health] run function tcz_fuel_filler:get_health

function tcz_fuel_filler:get_info
execute if score #is_health_system_on tcz_num matches 1 as @e[tag=transport] run function tcz_fuel_filler:health_system

execute if score #is_repair_system_on tcz_num matches 1 as @a at @s anchored eyes run function tcz_fuel_filler:health/repair_system/get_look
execute if score #is_repair_system_on tcz_num matches 1 as @e[tag=transport,tag=repairing_car] run function tcz_fuel_filler:health/repair_system/is_working


execute if score #world_time tcz_time matches 20.. as @e[tag=transport,tag=broken,tag=with_health] at @s anchored feet run function tcz_fuel_filler:health/particles



#execute as @a[nbt={RootVehicle:{Entity:{Tags:["transport"]}}}] run function tcz_fuel_filler:get_player_info