particle minecraft:crit ~ ~ ~ 0 0 0 0.01 1
execute unless entity @e[tag=mpsout,distance=..1,scores={MPScableidtemp=0},tag=!tickdone] positioned ^ ^ ^0.5 run function mps:cableline
