load("./make1d.rb")
load("./mergesort.rb")

def birthday1_quick(b)
  m = 0
  n = b.length()
  for i in 0..(n-1)
    for j in 0..(n-1)
      if b[i] == b[j] && j != i
        m = m + 1
        break
      end
    end
  end
  m
end

def birthday1(b)
  m = 0
  n = b.length()
  for i in 0..(n-1)
    k = 0
    for j in 0..(n-1)
      if b[i] == b[j]
        k = k + 1
      end
    end
    if k > 1
      m = m + 1
    end
  end
  m
end

def birthday2(b)
  m = 0
  a = mergesort(b)
  n = a.length()
  i = 0
  while i < n-1
    k = 1
    while k < (n-i) && a[i] == a[k+i]
      k = k + 1
    end
    if k >= 2
      m = m + k
    end
    i = i + k
  end
  m
end

def birthday3(b)
  c = make1d(365)
  n = b.length()
  for i in 0..(n-1)
    d = b[i]
    c[d] =  c[d] + 1
  end
  s = 0
  for j in 0..364
    if c[j] >= 2
      s = s + c[j]
    end
  end
  s
end
