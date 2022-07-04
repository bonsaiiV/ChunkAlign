# from chunk_align:interchunk/align_x, chunk_align:interchunk/align_y, chunk_align:interchunk/align_z, chunk_align:interchunk/recursion
# @s = armor_stand

scoreboard players remove @s __pos 1
execute if score @s __pos = 0 const run tp @s ~ ~ ~ ~ ~
execute if score @s __pos > 0 const positioned ^ ^ ^-16 run function chunk_align:interchunk/recursion