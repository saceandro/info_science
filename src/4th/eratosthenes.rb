def primes(n)
  a = Array.new(n+2)
  for i in 0..(n+1)
    a[i] = i
  end
  a[0] = 1
  j = 1
  while j <= n
    while j <= n && a[j] == 1
      j = j + 1
    end
    for k in (j+1)..(n+1)
      if a[k]%a[j] == 0
        a[k] = 1
      end
    end
    a[j] = 0
    j = j + 1
  end
  a[0..n]
end

def makearray2_(n)
  a = Array.new(n-1)
  for i in 2..n
    a[i-2] = i
  end
  a
end

def print_primes(n)
  for i in 0..n
    p(primes(i))
  end
end
