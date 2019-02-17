load("~/info_science/3rd/make2d.rb")
include(Math)

def make2d_nil(m,n)
  a = Array.new(m)
  for i in 0..(m-1)
    a[i] = Array.new(n)
  end
  a
end

def sub_radixsort(a,n,k)
  i = make1d(10)
  b = make2d_nil(10,n)
  for j in 0..(a.length()-1)
    d = a[j] % 10
    b[d][i[d]] = a[j]
    i[d] = i[d] + 1
  end
  for l in 1..k
    q = make1d(10)
    c = make2d_nil(10,n)
    for j in 0..9
      p = 0
      while p < n && b[j][p] != nil
        d = (b[j][p] / 10**l) % 10
        c[d][q[d]] = b[j][p]
        q[d] = q[d] + 1
        p = p + 1
      end
    end
    b = c
  end
  b
end

def rebuild(b,n)
  c = Array.new(n)
  ic = 0
  for j in 0..9
    p = 0
    while p < n && b[j][p] != nil
      c[ic] = b[j][p]
      p = p + 1
      ic = ic + 1
    end
  end
  c
end

def radixsort(a,max)
  k = log10(max) - (log10(max) % 1)
  rebuild(sub_radixsort(a,a.length(),k),a.length())
end
        
