#declare tag veer.ecf.skipWhiteTeam
#declare tag veer.ecf.isGlowing

#Starts as white
execute if entity @s[tag=!veer.ecf.glow_color] run team join veer.ecf.white
execute if entity @s[tag=!veer.ecf.glow_color] run tag @s add veer.ecf.white
tag @s add veer.ecf.glow_color
# Make sure it doesn't skip white by skipping white team
execute if entity @s[tag=veer.ecf.yellow] run tag @s add veer.ecf.skipWhiteTeam

# Cycle color
execute if entity @s[tag=veer.ecf.yellow] run team join veer.ecf.white
execute if entity @s[tag=veer.ecf.yellow] run tag @s add veer.ecf.white
execute if entity @s[tag=veer.ecf.yellow] run tag @s remove veer.ecf.yellow
execute if entity @s[tag=veer.ecf.red] run team join veer.ecf.yellow
execute if entity @s[tag=veer.ecf.red] run tag @s add veer.ecf.yellow
execute if entity @s[tag=veer.ecf.red] run tag @s remove veer.ecf.red
execute if entity @s[tag=veer.ecf.light_purple] run team join veer.ecf.red
execute if entity @s[tag=veer.ecf.light_purple] run tag @s add veer.ecf.red
execute if entity @s[tag=veer.ecf.light_purple] run tag @s remove veer.ecf.light_purple
execute if entity @s[tag=veer.ecf.green] run team join veer.ecf.light_purple
execute if entity @s[tag=veer.ecf.green] run tag @s add veer.ecf.light_purple
execute if entity @s[tag=veer.ecf.green] run tag @s remove veer.ecf.green
execute if entity @s[tag=veer.ecf.gray] run team join veer.ecf.green
execute if entity @s[tag=veer.ecf.gray] run tag @s add veer.ecf.green
execute if entity @s[tag=veer.ecf.gray] run tag @s remove veer.ecf.gray
execute if entity @s[tag=veer.ecf.gold] run team join veer.ecf.gray
execute if entity @s[tag=veer.ecf.gold] run tag @s add veer.ecf.gray
execute if entity @s[tag=veer.ecf.gold] run tag @s remove veer.ecf.gold
execute if entity @s[tag=veer.ecf.dark_red] run team join veer.ecf.gold
execute if entity @s[tag=veer.ecf.dark_red] run tag @s add veer.ecf.gold
execute if entity @s[tag=veer.ecf.dark_red] run tag @s remove veer.ecf.dark_red
execute if entity @s[tag=veer.ecf.dark_purple] run team join veer.ecf.dark_red
execute if entity @s[tag=veer.ecf.dark_purple] run tag @s add veer.ecf.dark_red
execute if entity @s[tag=veer.ecf.dark_purple] run tag @s remove veer.ecf.dark_purple
execute if entity @s[tag=veer.ecf.dark_green] run team join veer.ecf.dark_purple
execute if entity @s[tag=veer.ecf.dark_green] run tag @s add veer.ecf.dark_purple
execute if entity @s[tag=veer.ecf.dark_green] run tag @s remove veer.ecf.dark_green
execute if entity @s[tag=veer.ecf.dark_gray] run team join veer.ecf.dark_green
execute if entity @s[tag=veer.ecf.dark_gray] run tag @s add veer.ecf.dark_green
execute if entity @s[tag=veer.ecf.dark_gray] run tag @s remove veer.ecf.dark_gray
execute if entity @s[tag=veer.ecf.dark_blue] run team join veer.ecf.dark_gray
execute if entity @s[tag=veer.ecf.dark_blue] run tag @s add veer.ecf.dark_gray
execute if entity @s[tag=veer.ecf.dark_blue] run tag @s remove veer.ecf.dark_blue
execute if entity @s[tag=veer.ecf.dark_aqua] run team join veer.ecf.dark_blue
execute if entity @s[tag=veer.ecf.dark_aqua] run tag @s add veer.ecf.dark_blue
execute if entity @s[tag=veer.ecf.dark_aqua] run tag @s remove veer.ecf.dark_aqua
execute if entity @s[tag=veer.ecf.blue] run team join veer.ecf.dark_aqua
execute if entity @s[tag=veer.ecf.blue] run tag @s add veer.ecf.dark_aqua
execute if entity @s[tag=veer.ecf.blue] run tag @s remove veer.ecf.blue
execute if entity @s[tag=veer.ecf.black] run team join veer.ecf.blue
execute if entity @s[tag=veer.ecf.black] run tag @s add veer.ecf.blue
execute if entity @s[tag=veer.ecf.black] run tag @s remove veer.ecf.black
execute if entity @s[tag=veer.ecf.aqua] run team join veer.ecf.black
execute if entity @s[tag=veer.ecf.aqua] run tag @s add veer.ecf.black
execute if entity @s[tag=veer.ecf.aqua] run tag @s remove veer.ecf.aqua
execute if entity @s[tag=veer.ecf.white, tag=!veer.ecf.skipWhiteTeam] run team join veer.ecf.aqua
execute if entity @s[tag=veer.ecf.white, tag=!veer.ecf.skipWhiteTeam] run tag @s add veer.ecf.aqua
execute if entity @s[tag=veer.ecf.white, tag=!veer.ecf.skipWhiteTeam] run tag @s remove veer.ecf.white

# cleanup
tag @s remove veer.ecf.skipWhiteTeam