if !global_variables.index("$base_random_seed") || !$base_random_seed
  $base_random_seed = srand()
  $base_random_seed = srand()
end

def randoms2(id, size, max)
  srand($base_random_seed + id)
  a = Array.new(size)
  for i in 0..(size-1)
    a[i]=rand(max)
  end
  a
end
