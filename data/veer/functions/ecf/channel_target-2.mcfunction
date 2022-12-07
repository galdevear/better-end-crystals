execute store result entity @s BeamTarget.X double 1 run data get storage veer.ecf.target_w_ec BeamTarget.X
execute store result entity @s BeamTarget.Y double 1 run data get storage veer.ecf.target_w_ec BeamTarget.Y
execute store result entity @s BeamTarget.Z double 1 run data get storage veer.ecf.target_w_ec BeamTarget.Z

# At the trident
# TODO: Allow waterlogged.

data modify entity @s Glowing set value 0b
execute if block ~ ~ ~ lightning_rod run function veer:ecf/power_rod
execute if block ~ ~ ~ end_rod run data modify entity @s Glowing set value 1b

# At the end crystal
execute at @s run function veer:ecf/pair_ec-1