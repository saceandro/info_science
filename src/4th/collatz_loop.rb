def tnpo(n)
  if n%2 == 0
    n/2
  else
    3*n + 1
  end
end

def collatz_loop(n)
  i = 0
  while n != 1
    n = tnpo(n)
    i = i + 1
  end
  i
end
