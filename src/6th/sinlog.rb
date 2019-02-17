include(Math)

def g(x)
  sin(x)/log(x)
end

def trapezoid_sinlog(xs,xe,n)
  deltax = (xe-xs)*1.0/n
  sum = (g(xs)+g(xe))/2.0
  for i in 1..(n-1)
    sum = sum + g(xs+i*deltax)
  end
  deltax*sum
end

def simpson_sinlog(xs,xe,n)
  deltax = (xe-xs)/2.0/n
  sum = g(xs) + 4*g(xs+deltax) + g(xe)
  for i in 1..(n-1)
    sum = sum + 2*g(xs + 2*i*deltax) + 4*g(xs + (2*i+1)*deltax)
  end
  deltax*sum/3.0
end
