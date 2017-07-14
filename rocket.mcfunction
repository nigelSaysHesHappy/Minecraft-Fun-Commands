#Turn yourself and others into a rocket and shoot straight into the sky and explode!
#Only works with players!

#If you have something running on the gameLoop, you will need to reset that after running this.

scoreboard objectives add fc_timer dummy
scoreboard players add @a[score_fc_timer_min=1] fc_timer 1
scoreboard players add @s fc_timer 1
effect @a[score_fc_timer_min=1] minecraft:levitation 1 15 true
execute @a[score_fc_timer_min=1] ~ ~ ~ particle largesmoke ~ ~1 ~ 0.3 0 0.3 0 5
execute @a[score_fc_timer=1] ~ ~ ~ gamerule gameLoopFunction funcommands:rocket
execute @a[score_fc_timer_min=30] ~ ~ ~ function funcommands:explode
execute @a[score_fc_timer_min=30] ~ ~ ~ gamerule gameLoopFunction null
execute @a[score_fc_timer_min=30] ~ ~ ~ scoreboard objectives remove fc_timer
