load("./make1d.rb")

def sub_hanoiarray(n, from, to, buf)
  if n == 0
    []
  else
    sub_hanoiarray(n-1, from, buf, to) + [from,to] + sub_hanoiarray(n-1, buf, to, from)
  end
end

def hanoi_times(n)
  if n == 0
    0
  else
    2*hanoi_times(n-1) + 1
  end
end

def hanoiarray(n)
  a = make1d(n)
  for i in 0..(n-1)
    a[i] = i + 1
  end
  b = [a,[],[]]
  p b
  c = sub_hanoiarray(n,0,1,2)
  l = c.length()/2
  for i in 0..(l-1)
    b[c[2*i+1]] = [b[c[2*i]][0]] + b[c[2*i+1]]
    b[c[2*i]] = b[c[2*i]][1..(b[c[2*i]].length()-1)]
    p b
  end
end

def sub_hanoiarray_r(n,i,from,to,buf)
  if n == 0
    [[],[],[]]
  else
    if i == 0
      a = Array.new(n)
      for i in 0..(n-1)
        a[i] = i + 1
      end
      [a,[],[]]
    else
      m = 2**(n-1)
      if i < m
        [sub_hanoiarray_r(n-1,i,from,buf,to)[from]+[n],sub_hanoiarray_r(n-1,i,from,buf,to)[to],sub_hanoiarray_r(n-1,i,from,buf,to)[buf]]
    else
        if i == m
          [[],[n],sub_hanoiarray_r(n,i-1,from,to,buf)[buf]]
        else
          [sub_hanoiarray_r(n-1,i,buf,to,from)[from],sub_hanoiarray_r(n-1,i,buf,to,from)[to]+[n],sub_hanoiarray_r(n-1,i,buf,to,from)[buf]]
        end
      end
    end
  end
end

def hanoiarray_r(n)
  for i in 0..(2**n-1)
    p sub_hanoiarray_r(n,i,0,1,2)
  end
end
