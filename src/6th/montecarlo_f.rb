include(Math)

def f(x)
  x/(x+1.0)/(x+2.0)
end

def montecarlo_f(xs,xe,n)
  m = 0
  sup = 3 - 2*sqrt(2)
  x = xs + (xe - xs) * rand()
  y = sup * rand()
  if y < f(x)
    m = m+1
  end
  a = (xe - xs) * sup
  a*m/n
end
