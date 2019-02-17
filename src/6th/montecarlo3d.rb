def montecarlo3d(n)
  m = 0
  for i in 0..(n-1)
    x = rand()
    y = rand()
    z = rand()
    if x**2 + y**2 + z**2 < 1
      m = m + 1
    end
  end
  8.0*m/n
end
