include(Math)

def make1d(n)
  a = Array.new(n)
  for i in 0..(n-1)
    a[i] = 0
  end
  a
end

def make2d(m,n)
  a = Array.new(m)
  for i in 0..(m-1)
    a[i] = make1d(n)
  end
  a
end

def f(x)
  x/(x+1.0)/(x+2.0)
end

def mcplot_f(xs,xe,n)
  a = make2d(100,100)
  sup = 3 - 2*sqrt(2)
  for i in 1..n
    xr = rand() # random number in [0,1)
    yr = rand()
    x = xs + (xe - xs)*xr
    y = sup*yr
    if y < f(x)
      a[(1-yr)*100][xr*100] = 1.0
    else
      a[(1-yr)*100][xr*100] = 0.4
    end
  end
  a
end
