scoreboard players operation @e[tag=mpsout,tag=!tickdone] MPScableidtemp = @s MPScableid
execute as @e[tag=mpsout,tag=!tickdone] run scoreboard players operation @s MPScableidtemp -= @s MPScableid
tp @s ~ ~ ~ facing @e[tag=mpsout,scores={MPScableidtemp=0},tag=!tickdone]
execute if entity @e[tag=mpsout,scores={MPScableidtemp=0},tag=!tickdone] run function mps:cable
tag @s add tickdone
execute if entity @e[tag=mpsin,tag=!tickdone] run function mps:cabletarget
