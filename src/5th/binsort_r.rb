def max_i_r(a,i)
  if i > 0
    if a[i] > max_i_r(a,i-1)
      a[i]
    else
    max_i_r(a,i-1)
    end
  else
    a[0]
  end
end

def max_r(a)
  max_i_r(a,a.length()-1)
end

def count_i_j_r(a,i,j)
  if j > 0
    if a[j] == i
      count_i_j_r(a,i,j-1) + 1  
    else
      count_i_j_r(a,i,j-1)
    end
  else
    if a[0] == i
      1
    else
      0
    end
  end
end

def count_i_r(a,i)
  count_i_j_r(a,i,a.length()-1)
end

def counter_r(a,i)
  if i > 0
    counter_r(a,i-1) << count_i_r(a,i)
  else
    [count_i_r(a,0)]
  end
end

def count_r(a)
  counter_r(a,max_r(a))
end

def make_r(i,j)
  if j > 0
    make_r(i,j-1) << i
  else
    []
  end
end

def rebuild_i_r(c,i)
  if i >= 0
    rebuild_i_r(c,i-1) + make_r(i,c[i])
  else
    []
  end
end

def rebuild_r(c)
  rebuild_i_r(c,c.length()-1)
end

def binsort_r(a)
  rebuild_r(count_r(a))
end
