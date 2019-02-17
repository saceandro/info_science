include(Math)

def abs(x)
  if x < 0
    -x
  else
    x
  end
end

def f(x)
  sqrt(1-x**2)
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
    x = rand() # random number in [0,1)
    y = rand()
    if x*x + y*y < 1.0
      m = m + 1
    end
  end
  m*1.0/n
end

def montecarlo_f(xs,xe,n)
  m = 0
  for i in 1..n
    x = (xe-xs)*rand()
    y = rand()
    if y < f(x)
      m = m+1
    end
  end
  1.0*(xe-xs)*m/n
end
    
def accuracy(n)
  ff = open("accuracy_int.dat","w")
  format = "%i\t%.15e\t%.15e\t%.15e\n"
  for i in 1..n
    error1 = abs(PI/4 - trapezoid(0,1,10**i))
    error2 = abs(PI/4 - simpson(0,1,10**i))
    error3 = abs(PI/4 - montecarlo(10**i))
    ff.puts sprintf(format,10**i,error1,error2,error3)
  end
  ff.close
end

def accuracy_relative(n)
  ff = open("accuracy_relative.dat","w")
  format = "%i\t%.15e\t%.15e\t%.15e\n"
  for i in 1..n
    error1 = abs(1.0 - trapezoid(0,1,10**i)*4.0/PI)
    error2 = abs(1.0 - simpson(0,1,10**i)*4.0/PI)
    error3 = abs(1.0 - montecarlo(10**i)*4.0/PI)
    ff.puts sprintf(format,10**i,error1,error2,error3)
  end
  ff.close
end

def g(x)
  (x*sqrt(1-x**2) + asin(x))/2.0
end

def accuracy2(xs,xe,n)
  ff = open("accuracy2.dat","w")
  format = "%i\t%.15e\t%.15e\t%.15e\n"
  deltag = g(xe) - g(xs)
  for i in 1..n
    s = 10**i
    error1 = abs(deltag- trapezoid(xs,xe,s))
    error2 = abs(deltag- simpson(xs,xe,s))
    error3 = abs(deltag - montecarlo_f(xs,xe,s))
    ff.puts sprintf(format,s,error1,error2,error3)
  end
  ff.close
end

def accuracy3(xs,xe,n)
  ff = open("accuracy3.dat","w")
  format = "%i\t%.15e\t%.15e\t%.15e\n"
  deltag = g(xe) - g(xs)
  for i in 1..n
    s = 10**i
    error1 = abs(deltag- trapezoid(xs,xe,s))
    error2 = abs(deltag- simpson(xs,xe,s))
    error3 = abs(deltag - montecarlo_f(xs,xe,s))
    ff.puts sprintf(format,s,error1,error2,error3)
  end
  ff.close
end
