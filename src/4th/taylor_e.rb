load("./factorial.rb")

def taylor_e(x,n)
  if n >= 1
    taylor_e(x,n-1) + 1.0*x**n/factorial(n)
  else
    1
  end
end
