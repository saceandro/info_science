load("./bench.rb")
include(Math)
def power1(n)
  phi = (1+sqrt(5))/2
  phi**n
end

def power2(n)
  phi = (1+sqrt(5))/2
  if n == 0
    1
  else
    if n%2 == 0
      (power2(n/2))**2
    else
      phi*power2(n-1)
    end
  end
end

def compare_power(n)
  for i in 1..n
    run("power1",10**i)
    run("power2",10**i)
  end
end
