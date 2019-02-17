def swap(a,i,j)
  v = a[i]
  a[i] = a[j]
  a[j] = v
end

def pivot(a,i,j)
  k = i + 1
  while k <= j && a[i] == a[k]
    k = k + 1
  end
  if k > j
    -1
  else
    if a[i] < a[k]
      k
    else
      i
    end
  end
end

def part(a,i,j,s)
  l = i
  r = j
  while l <= r
    while l <= j && a[l] < s
      l = l + 1
    end
    while i <= r && s <= a[r]
      r = r - 1
    end
    if l > r
      break
    end
    swap(a,l,r)
    l = l + 1
    r = r - 1
  end
  l
end

def sub_quicksort(a,i,j)
  if i != j
    q = pivot(a,i,j)
    p q
    if q != -1
      l = part(a,i,j,a[q])
      sub_quicksort(a,i,l-1)
      p a
      sub_quicksort(a,l,j)
      p a
    end
  end
end

def quicksort(a)
  sub_quicksort(a,0,a.length()-1)
  a
end
    
  
