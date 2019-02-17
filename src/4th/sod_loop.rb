load("../3rd/divisible.rb")

def sod_loop(k,n)
  s = 0
  for i in 1..n
    if divisible(k,i)
      s = s + i
    end
  end
  s
end
