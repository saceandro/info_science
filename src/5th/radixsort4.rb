load("~/info_science/3rd/make1d.rb")
include(Math)

def make2d_nil(m,n)
  a = Array.new(m)
  for i in 0..(m-1)
    a[i] = Array.new(n)
  end
  a
end

def radixsort(a,max,m)
  n = a.length()
  x = log(max)/log(m)
  k = x - (x % 1)
  i = make1d(m)
  b = make2d_nil(m,n)
  for j in 0..(a.length()-1)
    d = a[j] % m
    b[d][i[d]] = a[j]
    i[d] = i[d] + 1
  end
  for l in 1..(k+1)
    q = make1d(m)
    c = make2d_nil(m,n)
    for j in 0..(m-1)
      p = 0
      while p < n && b[j][p] != nil
        d = (b[j][p] / m**l) % m
        c[d][q[d]] = b[j][p]
        q[d] = q[d] + 1
        p = p + 1
      end
    end
    b = c
  end
  b[0]
end
