tellraw @s {"text": ">> vlaylam reset.mcfunction invoked"}

scoreboard players set @a tcz_vlaylam 0


execute at @s run data modify entity @e[tag=vlaylamNPC, limit=1, sort=nearest] Weapons[0].id set value "cgm:shotgun"
execute at @s run data merge entity @e[tag=vlaylamNPC, limit=1, sort=nearest] {Texture:"quests:textures/tcz_vlaylam_wound.png"}
execute at @s run data merge entity @e[tag=vlaylamNPC, limit=1, sort=nearest] {Name:"[CHANGING SKIN]"}
execute at @s run data merge entity @e[tag=vlaylamNPC, limit=1, sort=nearest] {Name:"Влэйлам"}