scoreboard objectives add MPScableidtemp dummy
scoreboard objectives add MPScableid dummy
execute as @e[tag=mpsin,tag=!tickdone,limit=1] at @s run function mps:cabletarget
