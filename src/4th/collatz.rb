def tnpo(n)
  if n%2 == 0
    n/2
  else
    3*n + 1
  end
end

def collatz(n)
  if n == 1
    0
  else
    collatz(tnpo(n)) + 1
  end
end
