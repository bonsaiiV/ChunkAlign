summon armor_stand ~ 200 ~ {Tags:["chunk_finder"], Invisible:1b, Marker:1b}

execute as @e[tag=chunk_finder, sort=nearest, limit=1] store result score @s posX run data get entity @s Pos[0] 1
scoreboard players operation @e[tag=chunk_finder, sort=nearest, limit=1] posX %= 16 const
execute as @e[tag=chunk_finder, sort=nearest, limit=1] positioned ~-1 ~ ~ unless score @s posX = 0 const run function chunk_finder:x_recursion

execute as @e[tag=chunk_finder, sort=nearest, limit=1] store result score @s posZ run data get entity @s Pos[2] 1
scoreboard players operation @e[tag=chunk_finder, sort=nearest, limit=1] posZ %= 16 const
execute as @e[tag=chunk_finder, sort=nearest, limit=1] at @s positioned ~ ~ ~-1 unless score @s posZ = 0 const run function chunk_finder:z_recursion

execute at @e[tag=chunk_finder, sort=nearest, limit=1] run function #chunk_finder:alligned_function
kill @e[tag=chunk_finder]
