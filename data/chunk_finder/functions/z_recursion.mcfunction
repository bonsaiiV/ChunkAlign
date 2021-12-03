scoreboard players remove @s posZ 1
execute if score @s posZ = 0 const run tp ~ ~ ~
execute positioned ~ ~ ~-1 unless score @s posZ = 0 const run function chunk_finder:z_recursion