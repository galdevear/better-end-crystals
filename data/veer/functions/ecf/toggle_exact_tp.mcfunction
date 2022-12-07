# If the advancement is flagged as redundant, skip it.
scoreboard players set $t2 veer.ecf.register 0
execute if entity @s[advancements={veer:ecf/toggle_exact_tp={isRedundant = true}}] run scoreboard players set $t2 veer.ecf.register 1
# DEBUG
#execute if entity @s[advancements={veer:ecf/toggle_exact_tp={isRedundant = true}}] run say wut?
#execute if entity @s[advancements={veer:ecf/toggle_exact_tp={isRedundant = false}}] run say wut!

# Execute as end crystal, but at the corresponding end gateway.
execute if entity @s[advancements={veer:ecf/toggle_exact_tp={isRedundant = false}}] as @e[type=end_crystal,sort=nearest,limit=1, distance=..7] if data entity @s BeamTarget at @s run function veer:ecf/toggle_exact_tp-1

# Reset advancement and flag the next call as redundant if this one wasn't
advancement revoke @s only veer:ecf/toggle_exact_tp
execute if score $t2 veer.ecf.register matches 0 run advancement grant @s only veer:ecf/toggle_exact_tp isRedundant