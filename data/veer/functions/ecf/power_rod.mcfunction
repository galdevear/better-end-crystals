# Set lighting rod to white
execute if block ~ ~ ~ lightning_rod[facing=down, waterlogged=false] run setblock ~ ~ ~ lightning_rod[facing=down,powered=true] replace
execute if block ~ ~ ~ lightning_rod[facing=up, waterlogged=false] run setblock ~ ~ ~ lightning_rod[facing=up,powered=true] replace
execute if block ~ ~ ~ lightning_rod[facing=west, waterlogged=false] run setblock ~ ~ ~ lightning_rod[facing=west,powered=true] replace
execute if block ~ ~ ~ lightning_rod[facing=east, waterlogged=false] run setblock ~ ~ ~ lightning_rod[facing=east,powered=true] replace
execute if block ~ ~ ~ lightning_rod[facing=north, waterlogged=false] run setblock ~ ~ ~ lightning_rod[facing=north,powered=true] replace
execute if block ~ ~ ~ lightning_rod[facing=south, waterlogged=false] run setblock ~ ~ ~ lightning_rod[facing=south,powered=true] replace

execute if block ~ ~ ~ lightning_rod[facing=down, waterlogged=true] run setblock ~ ~ ~ lightning_rod[facing=down,powered=true, waterlogged=true] replace
execute if block ~ ~ ~ lightning_rod[facing=up, waterlogged=true] run setblock ~ ~ ~ lightning_rod[facing=up,powered=true, waterlogged=true] replace
execute if block ~ ~ ~ lightning_rod[facing=west, waterlogged=true] run setblock ~ ~ ~ lightning_rod[facing=west,powered=true, waterlogged=true] replace
execute if block ~ ~ ~ lightning_rod[facing=east, waterlogged=true] run setblock ~ ~ ~ lightning_rod[facing=east,powered=true, waterlogged=true] replace
execute if block ~ ~ ~ lightning_rod[facing=north, waterlogged=true] run setblock ~ ~ ~ lightning_rod[facing=north,powered=true, waterlogged=true] replace
execute if block ~ ~ ~ lightning_rod[facing=south, waterlogged=true] run setblock ~ ~ ~ lightning_rod[facing=south,powered=true, waterlogged=true] replace


# Make end crystal and its beam glow
data modify entity @s Glowing set value 1b