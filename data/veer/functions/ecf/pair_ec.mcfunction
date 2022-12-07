# Activates when the pair_ec advancement detects that you've right clicked an end crystal 
# Reset parent advancement
advancement revoke @s only veer:ecf/pair_ec
# TODO: Update to prevent redundant processing.

# Execute as end crystal, but at the corresponding end gateway.
execute as @e[type=end_crystal,sort=nearest,limit=1, distance=..7] if data entity @s BeamTarget at @s run function veer:ecf/pair_ec-1
