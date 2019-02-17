include(Math)

# 被積分関数(関数名func)と積分区間[xs,xe]を合わせてオブジェクトと見なし、
# オブジェクトに対して、3つの方法で数値積分するメソッドを定める。
class NInt
  def initialize(func,xs,xe) # func :"function name"
    @f = Object.method(func)
    @xs = xs
    @xe = xe
  end
  
  def trapezoid(nstep)
    deltax = (@xe-@xs)*1.0/nstep
    sum = (@f.call(@xs) +@f.call(@xe))/2.0
    for j in 1..(nstep-1)
      sum = sum + @f.call(@xs+j*deltax)
    end
    deltax*sum
  end
  
  def simpson(nstep)
    deltax = (@xe-@xs)/2.0/nstep
    sum = @f.call(@xs) + 4*@f.call(@xs+deltax) + @f.call(@xe)
    for j in 1..(nstep-1)
      sum = sum + 2*@f.call(@xs + 2*j*deltax) + 4*@f.call(@xs + (2*j+1)*deltax)
    end
    deltax*sum/3.0
  end
  
  # このmontecarlo_func(nstep)は、区間Iを、I=[xs,xe]で定めると、区間I上、関数値が非負
  # かつ、端点(x = xs or x = xe)で関数が最大となる場合のみ用いることができる。
  def montecarlo_func(nstep)
    m = 0
    f_xs = @f.call(@xs)
    f_xe = @f.call(@xe)
    if f_xs > f_xe
      max = f_xs
    else
      max = f_xe
    end
    for j in 1..nstep
      x = @xs + (@xe-@xs)*rand()
      y = max*rand()
      if y < @f.call(x)
        m = m+1
      end
    end
    a = (@xe-@xs)*max
    1.0*a*m/nstep
  end
end

# montecarlo(n)は、4分円の面積を求めるときにのみ用いることができる。
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

# 区間I = [xs,xe]上非負で、かつx = xs or xs = xeで最大値をとる任意の関数
# (関数名func)について、
# 分割数10**1,10**2,...,10**nで数値積分した値と実際の値との誤差を求め、
# ファイルに書き出す関数 accuracy(func,xs,xe,n)
def accuracy(func,xs,xe,n) # func :"function name"
  set = NInt.new(func,xs,xe)
  ff = open("accuracy_#{func}_#{xs}_#{xe}.dat","w")
  format = "%1.0e\t%.15e\t%.15e\t%.15e\n"
  int_func = Object.method("int_"+func)
  delta_int_func = int_func.call(xe) - int_func.call(xs)
  for i in 1..n
    error1 = (delta_int_func - set.trapezoid(10**i)).abs
    error2 = (delta_int_func - set.simpson(10**i)).abs
    error3 = (delta_int_func - set.montecarlo_func(10**i)).abs
    ff.puts sprintf(format,10**i,error1,error2,error3)
  end
  ff.close
end

# accuracy(func,xs,xe,n)を、特に4分円の場合に限定した関数 accuracy_circle(n)
def accuracy_circle(n)
  set = NInt.new("f",0,1)
  ff = open("accuracy_circle.dat","w")
  format = "%1.0e\t%.15e\t%.15e\t%.15e\n"
  for i in 1..n
    error1 = (PI/4 - set.trapezoid(10**i)).abs
    error2 = (PI/4 - set.simpson(10**i)).abs
    error3 = (PI/4 - montecarlo(10**i)).abs
    ff.puts sprintf(format,10**i,error1,error2,error3)
  end
  ff.close
end

def f(x)
  sqrt(1-x**2)
end

# f(x)を解析的に積分した関数 int_f(x)
def int_f(x)
  (x*sqrt(1-x**2) + asin(x))/2.0
end

def h(x)
  exp(x) + 1
end

# h(x)を解析的に積分した関数 int_h(x)
def int_h(x)
  exp(x) + x
end
  
