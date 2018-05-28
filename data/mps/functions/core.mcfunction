tag @e remove tickdone
scoreboard objectives add MPScableidtemp dummy
scoreboard objectives add MPScableid dummy
scoreboard objectives add MPSstored dummy
execute as @e[tag=mpsin,tag=!tickdone,limit=1] at @s run function mps:cabletarget

function mps:placecable
execute as @e[tag=mpsin,tag=unlinked] at @s if entity @e[tag=mpsout,tag=unlinked,limit=1,sort=nearest,distance=..10] run function mps:linkcable

function mps:delcable
