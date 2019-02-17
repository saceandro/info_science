class NInt

  include(Math)
  
  MethodNames = ["trapezoid","simpson","montecarlo_f"]

  def initialize(func,xs,xe,n)
    @func = func
    @xs = xs
    @xe = xe
    @n = n
    @methods = []
    for i in 0..2
      @method.push(Object.method(MethoadNames[i])
    end
  end
  
  def trapezoid
    deltax = (@xe-@xs)*1.0/n
    sum = (@func(@xs)+@func(@xe))/2.0
    for i in 1..(n-1)
      sum = sum + @func(@xs+i*deltax)
    end
    deltax*sum
  end
  
  def simpson
    deltax = (@xe-@xs)/2.0/n
    sum = f(@xs) + 4*f(@xs+deltax) + f(@xe)
    for i in 1..(n-1)
      sum = sum + 2*f(@xs + 2*i*deltax) + 4*f(@xs + (2*i+1)*deltax)
    end
    deltax*sum/3.0
  end
  
  def montecarlo_f
    m = 0
    for i in 1..n
      x = @xs + (@xe-@xs)*rand()
      y = rand()
      if y < f(x)
        m = m+1
      end
    end
    1.0*(@xe-@xs)*m/n
  end
    
end

class Record < NInt
  def initialize
    super(func,xs,xe,n)
  end
  
  ff = open("accuracy.dat","w")
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

def f(x)
  sqrt(1-x**2)
end
