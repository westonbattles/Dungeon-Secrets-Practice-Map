#input: input: {storage, target_path, n, random_n} 

#add to temp array
$data modify storage world:temp temp_array append from storage $(storage) $(target_path)[$(random_n)] 

# remove from original array
$data remove storage $(storage) $(target_path)[$(random_n)]