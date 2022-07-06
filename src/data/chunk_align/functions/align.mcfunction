###############################################
#                                             #
# Description                                 #
# -----------                                 #
# Aligns the armor stand with the chunk grid  #
# and copies the armor stand (only it's tags) #
# across a rectangle of chunk edges.          #
#                                             #
###############################################

# from external function
# @s = armor_stand

# to reupdate position most comands are prefixed with: execute at @s run

# Set default Alignment
## make sure scores are set
scoreboard players add @s alignX 0
scoreboard players add @s alignY 0
scoreboard players add @s alignZ 0
execute if score @s alignX < 1 const run scoreboard players set @s alignX 16
execute if score @s alignY < 1 const run scoreboard players set @s alignY 16
execute if score @s alignZ < 1 const run scoreboard players set @s alignZ 16

execute at @s run function chunk_align:chunk/align_x
execute at @s run function chunk_align:chunk/align_y
execute at @s run function chunk_align:chunk/align_z

execute at @s align xyz positioned ~.5 ~ ~.5 run tp @s ~ ~ ~ ~ ~
