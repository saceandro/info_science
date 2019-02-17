def power2(n)
  if n >= 1
    2*power2(n-1)
  else
    1
  end
end

def power(x,n)
  if n >= 1
    x*power(x,n-1)
  else
    1
  end
end
