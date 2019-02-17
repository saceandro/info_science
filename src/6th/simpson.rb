load("./trapezoid.rb")

def simpson(xs,xe,n)
  deltax = (xe-xs)/2.0/n
  sum = f(xs) + 4*f(xs+deltax) + f(xe)
  for i in 1..(n-1)
    sum = sum + 2*f(xs + 2*i*deltax) + 4*f(xs + (2*i+1)*deltax)
  end
  deltax*sum/3.0
end

def simpson_accuracy(xs,xe,m)
  deltag = g(xe)-g(xs)
  for i in 1..m
    error = deltag - simpson(xs,xe,10**i)
    p error
  end
end
  
