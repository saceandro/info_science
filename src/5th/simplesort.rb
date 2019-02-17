def simplesort(a)           # 計算量 O(n^2)
  for i in 0..(a.length()-1)# for i in 0..(a.length()-2) でもよいと考えられる
    k = min_index(a,i)      # When i = a.length()-1, k = i
    v = a[i]                #
    a[i] = a[k]             #
    a[k] = v                # So, a[i] = a[i] ok!
  end
  a
end

def min_index(a,i)
  m = i # m: temporary minimum index
  for j in (i+1)..(a.length()-1)
    if a[j] < a[m]
      m = j
    end
  end
  m
end
