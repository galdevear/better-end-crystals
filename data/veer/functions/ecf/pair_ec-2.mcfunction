# Activate beacon beam
data modify block ~ ~-3 ~ Age set value 120

# Clear register
# TODO: Decide if it should not be cleared since the glitch would be more interesting but make debugging more confusing.
scoreboard players set $t1 veer.ecf.register 0

# Set portal target z and z coords to beam target
execute store result block ~ ~-3 ~ ExitPortal.X int 1 run data get entity @s BeamTarget.X 1
#execute store result block ~ ~-3 ~ ExitPortal.Y int 1 run data get entity @s BeamTarget.Y 1
execute store result block ~ ~-3 ~ ExitPortal.Z int 1 run data get entity @s BeamTarget.Z 1

# Add 2 (The beam visually points higher than the target coordinates record)
execute store result score $t1 veer.ecf.register run data get entity @s BeamTarget.Y 1
scoreboard players add $t1 veer.ecf.register 2

# Set portal target y coord
execute store result block ~ ~-3 ~ ExitPortal.Y int 1 run scoreboard players get $t1 veer.ecf.register

# Ensure teleportation target is precise
data modify block ~ ~-3 ~ ExactTeleport set value 1