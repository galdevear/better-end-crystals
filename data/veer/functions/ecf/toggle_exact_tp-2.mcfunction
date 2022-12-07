# Activate beacon beam
data modify block ~ ~-3 ~ Age set value 120

# Clear register
scoreboard players set $t1 veer.ecf.register 0

# Note: When ExactTeleport = 0, the game automatically removes the field. Therefore, you check if it exists instead of checking for zero and remove it to get the same effect as setting it to zero.
# Store data for conditional in seperate place so when I toggle it the code doesn't read the changed data as if it were the initial data.
# If ExactTelport doesn't exist, then it is false (aka 0)
execute unless data block ~ ~-3 ~ ExactTeleport run scoreboard players set $t1 veer.ecf.register 1

# Toggle ExactTeleport
execute if score $t1 veer.ecf.register matches 0 run data modify block ~ ~-3 ~ ExactTeleport set value 0b
execute if score $t1 veer.ecf.register matches 1 run data modify block ~ ~-3 ~ ExactTeleport set value 1b