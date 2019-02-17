load("./factorial_loop.rb")

def taylor_e_loop(x,n)
  s = 0
  for k in 0..n
    s = s + 1.0*x**k/factorial_loop(k)
  end
  s
end
