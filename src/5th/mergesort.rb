def merge(a,b)
  la = a.length()
  lb = b.length()
  c = Array.new(la+lb)       # c.length() = la + lb
  ia = 0
  ib = 0
  ic = 0                     # ic = ia + ib
  while ia < la && ib < lb
    if a[ia] < b[ib]
      c[ic] = a[ia]
      ia = ia + 1
    else
      c[ic] = b[ib]
      ib = ib + 1
    end
    ic = ic + 1
  end
#  if ia == la
    for j in ib..(lb-1)
      c[la+j] = b[j]     # ic = la + j
    end
#  else  # ib == lb
    for j in ia..(la-1)
      c[j+lb] = a[j]     # ic = j + lb
    end
 # end
  c
end

def mergesort(a)  # 計算量 O(nlogn)
  n = a.length()
  from = Array.new(n)
  for i in 0..(n-1)
    from[i] = [a[i]]
  end
  while n > 1
    to = Array.new((n+1)/2)
    for i in 0..(n/2-1)
      to[i] = merge(from[i*2], from[i*2+1])
    end
    if n%2 != 0
      to[(n+1)/2-1] = from[n-1]
    end
    from = to
    n = (n+1)/2
  end
  from[0]
end
