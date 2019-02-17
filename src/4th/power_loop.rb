def power2_loop(n)
  if n == 0
    1
  else
    s = 1
    for i in 1..n
      s = s*2
    end
    s
  end
end
    
def power_loop(x,n)
  if n == 0
    1
  else
    s = 1
    i = 0
    while i < n
      s = s*x
      i = i + 1
    end
    s
  end
end
