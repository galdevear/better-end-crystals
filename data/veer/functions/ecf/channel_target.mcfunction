# Triggers when channeling trident hits a target
advancement revoke @s only veer:ecf/channel_target
# as and at a channeling trident in range
execute as @e[tag=!veer.ecf.channel_target.ignore,type=trident, distance=..80, limit=1, nbt={Trident:{tag:{Enchantments:[{id:"minecraft:channeling"}]}}}] at @s run function veer:ecf/channel_target-1