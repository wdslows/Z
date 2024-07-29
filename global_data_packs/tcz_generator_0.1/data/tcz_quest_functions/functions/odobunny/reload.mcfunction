tellraw @s {"text": ">> odobunny reload.mcfunction invoked"}

execute at @s run data merge entity @e[tag=odobunnyNPC, limit=1, sort=nearest] {Name:"[RELOAD]"}
execute at @s run data merge entity @e[tag=odobunnyNPC, limit=1, sort=nearest] {Name:"Настя"}