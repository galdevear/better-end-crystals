# Make sure it doesn't redetect old tridents in the future
tag @s add veer.ecf.channel_target.ignore
# Return coords (in storage)
function veer:ecf/target_w_ec
# If loyalty, change y to offset downwards value
# execute if entity @s[nbt={Trident:{tag:{Enchantments:[{id:"minecraft:loyalty"}]}}}] store result storage veer.ecf.target_w_ec BeamTarget.Y double 0.1 run scoreboard players get $t1 veer.ecf.register

execute as @e[type=end_crystal,distance=..80,sort=nearest,limit=1] run function veer:ecf/channel_target-2