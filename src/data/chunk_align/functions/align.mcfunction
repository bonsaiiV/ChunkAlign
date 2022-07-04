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

tag @s add chunk_align

execute at @s run function chunk_align:chunk/align_x
execute at @s run function chunk_align:chunk/align_y
execute at @s run function chunk_align:chunk/align_z

execute at @s align xyz positioned ~.5 ~ ~.5 run tp @s ~ ~ ~ ~ ~

# Set minimum Dimensions
execute if score @s countX < 1 const run scoreboard players set @s countX 1
execute if score @s countY < 1 const run scoreboard players set @s countY 1
execute if score @s countZ < 1 const run scoreboard players set @s countZ 1

execute at @s if score @s countX > 1 const run function chunk_align:interchunk/align_x
execute at @s if score @s countY > 1 const run function chunk_align:interchunk/align_y
execute at @s if score @s countZ > 1 const run function chunk_align:interchunk/align_z

function chunk_align:clone/x
function chunk_align:clone/y
function chunk_align:clone/z

execute at @s run tp @s ~ ~ ~ 0 0

tag @e[tag=chunk_align] remove chunk_align