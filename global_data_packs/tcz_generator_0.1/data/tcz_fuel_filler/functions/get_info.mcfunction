execute as @e[tag=transport] at @s if entity @p[distance=..6] store result score @s tcz_fuel run data get entity @s CurrentFuel

function tcz_fuel_filler:get_info/get_nearby

execute as @a[nbt={RootVehicle:{Entity:{Tags:["transport"]}}}] run function tcz_fuel_filler:get_info/get_in