load("./gd_loop.rb")
load("./sod_loop.rb")

def nod_loop(k,n)
  i = 0
  for j in 1..n
    if k%j == 0
      i = i + 1
    end
  end
  i
end

def nop_loop(n)
  if n == 1
    0
  else
    j = 0
    for i in 2..n
      s = i-1        #
      while i%s != 0 #
        s = s - 1    #
      end            #greatest divisor = s (=gd_loop(i,i-1))
      if s == 1
        j = j + 1      
      end
    end
    j
  end
end

def msod_loop(n)
  smax = 0
  for i in 1..n
    s = 0
    for j in 1..i
      if i%j == 0
        s = s + j
      end
    end
    if s > smax
      smax = s
    end
  end
  smax
end

def np_loop(n)
  while gd_loop(n,n-1) != 1
    n = n + 1
  end
  n
end

def nth_prime_loop(p,n)
  i = 0
  while i < n
    p = np_loop(p+1)
    i = i + 1
  end
  p
end
  
def nth_prime_loop2(p,n)
  a = []
  for i in 1..n
    p = np_loop(p+1)
    a.push(p)
  end
  a[n-1]
end

def perfect_loop(n)
  n == sod_loop(n,n-1)
end

def next_perfect_loop(n)
  while !perfect_loop(n)
    n = n + 1
  end
  n
end
  
