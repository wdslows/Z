tellraw @s {"text": ">> odobunny reset.mcfunction invoked"}


execute at @s run data merge entity @e[tag=odobunnyNPC, limit=1, sort=nearest] {Weapons:[]}
scoreboard players set @a tcz_odobunny 0