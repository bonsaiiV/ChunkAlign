###############################################
#                                             #
# Description                                 #
# -----------                                 #
# Aligns the armor stand with the chunk grid. #
#                                             #
###############################################

# from external function
# @s = armor_stand

# to reupdate position most comands are prefixed with: execute at @s run

tag @s add chunk_align

execute at @s run function chunk_align:chunk/align_x
execute at @s run function chunk_align:chunk/align_y
execute at @s run function chunk_align:chunk/align_z

execute at @s align xyz positioned ~.5 ~ ~.5 run tp @s ~ ~ ~ ~ ~

tag @e[tag=chunk_align] remove chunk_align