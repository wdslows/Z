execute as @e[tag=oramboCrateSpawnLoc,limit=1,sort=nearest,distance=0..20] at @s run setblock ~ ~2 ~ structure_block{name: "tcz_generation:scripted/structures/crates/orambo_crates", mode: "LOAD", posX: 0, posY: -2, sizeX: 2, posZ: -1, sizeY: 2, sizeZ: 3}
execute as @e[tag=oramboCrateSpawnLoc,limit=1,sort=nearest,distance=0..20] at @s run setblock ~ ~3 ~ redstone_block replace
execute as @e[tag=oramboCrateSpawnLoc,limit=1,sort=nearest,distance=0..20] at @s run setblock ~ ~3 ~ redstone_block replace
execute as @e[tag=oramboCrateSpawnLoc,limit=1,sort=nearest,distance=0..20] at @s run setblock ~ ~3 ~ air replace
execute as @e[tag=oramboCrateSpawnLoc,limit=1,sort=nearest,distance=0..20] at @s run setblock ~ ~2 ~ air replace

execute as @e[tag=oramboCrateSpawnLoc,limit=1,sort=nearest,distance=0..20] run kill @s