tellraw @s {"text": ">> vlaylam reload.mcfunction invoked"}

execute at @s run data merge entity @e[tag=vlaylamNPC, limit=1, sort=nearest] {Name:"[RELOAD]"}
execute at @s run data merge entity @e[tag=vlaylamNPC, limit=1, sort=nearest] {Name:"Влэйлам"}