# save tnt explosion rectangle coordinates
summon marker ~ ~ ~ {Tags:["temp_pos"]}
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=1,dy=1,dz=1,type=marker,tag=temp_pos,limit=1] run function superboom:store_tnt_box_coordinates
kill @e[tag=temp_pos,distance=..1]



# execute a function as every marker within a 6 block radius (ideally that has a unique score for n but im fucked to figure out how to do that so dupliates here we come)
execute as @e[tag=crypt_marker,distance=..6] run function crypt:find_crypt_pair