tag @e remove tickdone
scoreboard objectives add MPScableidtemp dummy
scoreboard objectives add MPScableid dummy
scoreboard objectives add MPSstored dummy

execute as @e[tag=mpsout,scores={MPSstored=1..}] at @s if entity @e[tag=mpsin,distance=..2] run scoreboard players add @e[sort=random,limit=1,distance=..2,tag=mpsin] MPSstored 1
execute as @e[tag=mpsout,scores={MPSstored=1..}] at @s if entity @e[tag=mpsin,distance=..2] run scoreboard players remove @s MPSstored 1

execute as @e[tag=mpsin,tag=!tickdone,limit=1] at @s run function mps:cabletarget

function mps:placecable
execute as @e[tag=mpsin,tag=unlinked] at @s if entity @e[tag=mpsout,tag=unlinked,limit=1,sort=nearest,distance=..10] run function mps:linkcable

function mps:delcable

execute as @e[tag=unlinked] at @s run particle minecraft:dragon_breath ~ ~ ~ 0 0 0 0.01 1
