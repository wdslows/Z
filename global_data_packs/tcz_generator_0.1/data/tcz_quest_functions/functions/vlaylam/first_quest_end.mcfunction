tellraw @s {"text": ">> vlaylam first_quest_end.mcfunction invoked"}

execute at @s run data merge entity @e[tag=vlaylamNPC, limit=1, sort=nearest] {Texture:"quests:textures/tcz_vlaylam_bandage.png"}
execute at @s run data merge entity @e[tag=vlaylamNPC, limit=1, sort=nearest] {Name:"[CHANGING SKIN]"}
execute at @s run data merge entity @e[tag=vlaylamNPC, limit=1, sort=nearest] {Name:"Влэйлам"}
execute at @s at @e[tag=vlaylamNPC, limit=1, sort=nearest] run playsound quests:common_bandaging player @a ~ ~ ~

scoreboard players set @s tcz_vlaylam 1