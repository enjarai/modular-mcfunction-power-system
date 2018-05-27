scoreboard players operation @e[tag=mpsout,tag=!tickdone] MPScableidtemp = @s MPScableid
execute as @e[tag=mpsout,tag=!tickdone] run scoreboard players operation @s MPScableidtemp -= @s MPScableid
tp @s ~ ~ ~ facing entity @e[tag=mpsout,scores={MPScableidtemp=0},tag=!tickdone,limit=1]
execute if entity @e[tag=mpsout,scores={MPScableidtemp=0},tag=!tickdone] if entity @s[scores={MPSstored=1..}] run scoreboard players add @e[tag=mpsout,scores={MPScableidtemp=0},tag=!tickdone] MPSstored 1
execute if entity @e[tag=mpsout,scores={MPScableidtemp=0},tag=!tickdone] if entity @s[scores={MPSstored=1..}] run scoreboard players remove @s MPSstored 1
execute if entity @e[tag=mpsout,scores={MPScableidtemp=0},tag=!tickdone] run function mps:cableline
tag @s add tickdone
execute if entity @e[tag=mpsin,tag=!tickdone] as @e[tag=mpsin,tag=!tickdone,limit=1] at @s run function mps:cabletarget
