load("~/info_science/3rd/make1d.rb")
include(Math)

def make2d_nil(m)
  a = Array.new(m)
  for i in 0..(m-1)
    a[i] = []
  end
  a
end

def radixsort2(a,max,m)
  n = a.length()
  x = log(max)/log(m)
  k = x - (x % 1)
  b = make2d_nil(m)
  for j in 0..(a.length()-1)
    d = a[j] % m
    b[d].push(a[j])
  end
  for l in 1..(k+1)
    q = make1d(m)
    c = make2d_nil(m)
    for j in 0..(m-1)
      p = 0
      for p in 0..(b[j].length()-1)
        d = (b[j][p] / m**l) % m
        c[d].push(b[j][p])
      end
    end
    b = c
  end
  b[0]
end
