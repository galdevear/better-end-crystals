#declare storage veer.ecf.target_w_ec
# Store trident's position
execute store result storage veer.ecf.target_w_ec BeamTarget.X double 1 run data get entity @s Pos[0]
execute store result storage veer.ecf.target_w_ec BeamTarget.Y double 1 run data get entity @s Pos[1]
execute store result storage veer.ecf.target_w_ec BeamTarget.Z double 1 run data get entity @s Pos[2]
# Clear registers
scoreboard players set $t1 veer.ecf.register 0
# Amputate decimal and store in storage
execute store result score $t1 veer.ecf.register run data get storage veer.ecf.target_w_ec BeamTarget.Y 100000
scoreboard players remove $t1 veer.ecf.register 200000
execute store result storage veer.ecf.target_w_ec BeamTarget.Y double 0.00001 run scoreboard players get $t1 veer.ecf.register