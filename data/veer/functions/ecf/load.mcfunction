#declare objective veer.ecf.register
scoreboard objectives add veer.ecf.register dummy

#declare score_holder $t1
scoreboard players add $t1 veer.ecf.register 0
#declare score_holder $t2
scoreboard players add $t2 veer.ecf.register 0
function veer:ecf/load_teams