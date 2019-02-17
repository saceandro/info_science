load("./make1d.rb")

def count(a,max)
  c = make1d(max)
  for i in 0..(a.length()-1)
    j = 0
    while j < max && a[i] != j
      j = j + 1
    end
    if j < max
      c[j] = c[j] + 1
    end
  end
  c
end

def rebuild(c,n)
  a = []
  for i in 0..(c.length()-1)
    for j in 1..c[i]
      a << i
    end
  end
  a
end

def max(a)
  max = 0
  for i in 0..(a.length()-1)
    if a[i] > max
      max = a[i]
    end
  end
  max + 1
end

def binsort(a,max)
  rebuild(count(a,max),a.length())
end
  
