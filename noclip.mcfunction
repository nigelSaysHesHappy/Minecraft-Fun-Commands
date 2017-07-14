#This will allow you to toggle spectator mode.
#When you run the function again, you will return to whatever gamemode you were in.

scoreboard players tag @s[m=0] add nc0
scoreboard players tag @s[m=1] add nc1
scoreboard players tag @s[m=2] add nc2
scoreboard players tag @s[m=!3] add spec
gamemode 3 @s[tag=spec]
execute @s[tag=!spec] ~ ~ ~ gamemode 0 @s[tag=nc0]
execute @s[tag=!spec] ~ ~ ~ gamemode 1 @s[tag=nc1]
execute @s[tag=!spec] ~ ~ ~ gamemode 2 @s[tag=nc2]
scoreboard players tag @s[tag=!spec] remove nc0
scoreboard players tag @s[tag=!spec] remove nc1
scoreboard players tag @s[tag=!spec] remove nc2
scoreboard players tag @s[tag=spec] remove spec
