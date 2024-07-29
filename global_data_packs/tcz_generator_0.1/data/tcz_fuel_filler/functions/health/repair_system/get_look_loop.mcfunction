execute if entity @e[tag=transport,distance=0..3,sort=nearest,limit=1] if score @e[tag=transport,distance=0..3,sort=nearest,limit=1] tcz_health < #max_health tcz_num run tag @e[tag=transport,distance=0..3,sort=nearest,limit=1] add repairing_car

#{
execute if entity @e[tag=repairing_car,distance=0..3,sort=nearest,limit=1] run particle ash ~ ~ ~ 0 0 0 1 1
execute if entity @e[tag=repairing_car,distance=0..3,sort=nearest,limit=1] run scoreboard players add @s tcz_processing 1
execute if entity @e[tag=repairing_car,distance=0..3,sort=nearest,limit=1] if score #is_repair_processing_sound_on tcz_num matches 1 run playsound minecraft:block.anvil.break block @a ~ ~ ~ 0.05
execute if entity @e[tag=repairing_car,distance=0..3,sort=nearest,limit=1] if score @s tcz_processing >= #time_to_fix tcz_processing run tag @e[tag=repairing_car,distance=0..3,sort=nearest,limit=1] add repaired_car

execute if entity @e[tag=repairing_car,distance=0..3,sort=nearest,limit=1] run execute store result score #temp tcz_num run scoreboard players get @s tcz_processing


execute if entity @e[tag=repairing_car,distance=0..3,sort=nearest,limit=1] run execute store result score #temp5persent tcz_num run scoreboard players get #time_to_fix tcz_processing

execute if entity @e[tag=repairing_car,distance=0..3,sort=nearest,limit=1] run scoreboard players operation #temp5persent tcz_num /= #20 tcz_num 

execute if entity @e[tag=repairing_car,distance=0..3,sort=nearest,limit=1] run scoreboard players operation #temp tcz_num /= #temp5persent tcz_num
execute if entity @e[tag=repairing_car,distance=0..3,sort=nearest,limit=1] run scoreboard players operation #temp tcz_num *= #5 tcz_num
execute if entity @e[tag=repairing_car,distance=0..3,sort=nearest,limit=1] run title @s actionbar [{"text":"Починка "},{"score":{"name":"#temp","objective":"tcz_num"},"color":"gold"},{"text":"%"}]


execute if entity @e[tag=repairing_car,distance=0..3,sort=nearest,limit=1] run scoreboard players reset #temp tcz_num
#}

#{
execute if entity @e[tag=repaired_car,distance=0..3,sort=nearest,limit=1] run clear @s iron_ingot 1
execute if entity @e[tag=repaired_car,distance=0..3,sort=nearest,limit=1] run scoreboard players operation @e[tag=repaired_car,distance=0..3,sort=nearest,limit=1] tcz_health += #health_per_fix tcz_num
execute if entity @e[tag=repaired_car,distance=0..3,sort=nearest,limit=1] run tag @e[tag=repaired_car,distance=0..3,sort=nearest,limit=1] remove repairing_car
execute if entity @e[tag=repaired_car,distance=0..3,sort=nearest,limit=1] if score #is_repair_finishing_sound_on tcz_num matches 1 run playsound minecraft:block.anvil.place block @a ~ ~ ~ 0.05

execute if entity @e[tag=repaired_car,distance=0..3,sort=nearest,limit=1] run scoreboard players reset @s tcz_processing

execute if entity @e[tag=repaired_car,distance=0..3,sort=nearest,limit=1] run tag @e[tag=repaired_car,distance=0..3,sort=nearest,limit=1] remove repaired_car
#}

execute positioned ^ ^ ^0.5 if entity @s[distance=0..3] run function tcz_fuel_filler:health/repair_system/get_look_loop