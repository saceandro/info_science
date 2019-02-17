include(Math)

def h(x)
  x/((x+1.0)*(x+2.0))
end

def f(x)
  4*Math.sqrt(1-x**2)
end

def trapezoid(xs,xe,n)
  deltax = (xe-xs)*1.0/n
  sum = (f(xs)+f(xe))/2.0
  for i in 1..(n-1)
    sum = sum + f(xs+i*deltax)
  end
  deltax*sum
end

def g(x)
  2*log(2+x)-log(1+x)
end

def trapezoid_accuracy(xs,xe,m)
  deltag = g(xe)-g(xs)
  for i in 1..m
    error = deltag - trapezoid(xs,xe,10**i)
    p error
  end
end
