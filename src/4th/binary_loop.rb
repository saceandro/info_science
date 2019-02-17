def binary_loop(n)
  s = ""
  while n >= 1
    s = s + (n % 2).to_s()
    n = n / 2
  end
  s
end

def binary_good(n)
  s = ""
  while n >= 1
    s = (n % 2).to_s() + s
    n = n / 2
  end
  s
end
