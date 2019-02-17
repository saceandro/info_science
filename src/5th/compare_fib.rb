load("./bench.rb")
load("./fibm.rb")

def compare_fibm6(n)
  for i in 1..n
    s = 2**(10*i)-1
    run("fibm6",s)
    run("fibm6_eigen",s)
  end
end
