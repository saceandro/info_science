def gradation(n)
  a = Array.new(n)
  for i in 0..(n-1)
    a[i] = 1.0*i/n
  end
  a
end
