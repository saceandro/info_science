include(Math)

def abs(x)
  if x < 0
    -x
  else
    x
  end
end

def f(x)
  exp(x)+1.0
end

def trapezoid(xs,xe,n)
  deltax = (xe-xs)*1.0/n
  sum = (f(xs)+f(xe))/2.0
  for i in 1..(n-1)
    sum = sum + f(xs+i*deltax)
  end
  deltax*sum
end

def simpson(xs,xe,n)
  deltax = (xe-xs)/2.0/n
  sum = f(xs) + 4*f(xs+deltax) + f(xe)
  for i in 1..(n-1)
    sum = sum + 2*f(xs + 2*i*deltax) + 4*f(xs + (2*i+1)*deltax)
  end
  deltax*sum/3.0
end

def montecarlo(n)
  m = 0
  for i in 1..n
    x = rand()
    y = (1+exp(1))*rand()
    if y < f(x)
      m = m + 1
    end
  end
  (exp(1)+1)*m/n
end

def accuracy_napier(n)
  ff = open("accuracy_napier.dat","w")
  format = "%i\t%.15e\t%.15e\t%.15e\n"
  for i in 1..n
    error1 = abs(1.0 - trapezoid(0,1,10**i)/exp(1))
    error2 = abs(1.0 - simpson(0,1,10**i)/exp(1))
    error3 = abs(1.0 - montecarlo(10**i)/exp(1))
    ff.puts sprintf(format,10**i,error1,error2,error3)
  end
  ff.close
end
