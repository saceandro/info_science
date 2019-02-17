include(Math)

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

def montecarlo_accuracy(n)
  for i in 1..n
    error = PI/4 - montecarlo(10**i)
    p error
  end
end
