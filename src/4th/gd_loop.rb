# the greatest divisor of k in between 1 to n
load("../3rd/divisible.rb")

def gd_loop(k,n)
  while !divisible(k,n)
    n = n-1
  end
  n
end
