def makend(n,m)
  if n >= 1
    p = Array.new(m)
    for i in 0..(m-1)
      p[i] = makend(n-1,m)
    end
    p
  else
    0
  end
end
    
