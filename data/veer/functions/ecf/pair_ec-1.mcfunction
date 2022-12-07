# pos x neg z
# Based on the corner the entity prioritizes so that it detects what looks like is under the end crystal
# If an end crystal is pushed with a block directly under it, then it explodes. For this reason, it needs to be able to detect the end gateway a bit lower than it otherwise would have needed to be
execute positioned ~ ~ ~ if block ~ ~-3 ~ end_gateway run function veer:ecf/pair_ec-2
execute positioned ~1 ~ ~ if block ~ ~-3 ~ end_gateway run function veer:ecf/pair_ec-2
execute positioned ~ ~ ~-1 if block ~ ~-3 ~ end_gateway run function veer:ecf/pair_ec-2
execute positioned ~1 ~ ~-1 if block ~ ~-3 ~ end_gateway run function veer:ecf/pair_ec-2
execute positioned ~ ~-1 ~ if block ~ ~-3 ~ end_gateway run function veer:ecf/pair_ec-2
execute positioned ~1 ~-1 ~ if block ~ ~-3 ~ end_gateway run function veer:ecf/pair_ec-2
execute positioned ~ ~-1 ~-1 if block ~ ~-3 ~ end_gateway run function veer:ecf/pair_ec-2
execute positioned ~1 ~-1 ~-1 if block ~ ~-3 ~ end_gateway run function veer:ecf/pair_ec-2