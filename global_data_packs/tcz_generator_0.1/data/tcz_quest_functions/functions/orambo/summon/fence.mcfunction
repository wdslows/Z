execute as @e[tag=oramboFenceSpawnLoc,limit=1,sort=nearest,distance=0..20] at @s run setblock ~ ~-1 ~ structure_block{name: "tcz_generation:city/survivor_spot/orambo/wall_0", rotation: "NONE", posX: -15, mode: "LOAD", posY: 1, sizeX: 31, posZ: -15, integrity: 1.0f, showair: 0b, sizeY: 16, sizeZ: 31}
execute as @e[tag=oramboFenceSpawnLoc,limit=1,sort=nearest,distance=0..20] at @s run setblock ~ ~ ~ redstone_block replace
execute as @e[tag=oramboFenceSpawnLoc,limit=1,sort=nearest,distance=0..20] at @s run setblock ~ ~ ~ redstone_block replace
execute as @e[tag=oramboFenceSpawnLoc,limit=1,sort=nearest,distance=0..20] at @s run setblock ~ ~ ~ air replace
execute as @e[tag=oramboFenceSpawnLoc,limit=1,sort=nearest,distance=0..20] at @s run setblock ~ ~-1 ~ air replace

execute as @e[tag=oramboFenceSpawnLoc,limit=1,sort=nearest,distance=0..20] run kill @s