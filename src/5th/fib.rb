include(Math)

def fibr(k)
  if k==0 || k==1
    1
  else
    fibr(k-1) + fibr(k-2)
  end
end

def fibl(k)
  f = 1
  p1 = 1
  for i in 2..k
    p2 = p1      #fib(i-2)
    p1 = f       #fib(i-1)
    f  = p1 + p2 #fib(i)
  end
  f              #fib(k)
end

def fibr_until(n)
  k = 0
  while fibr(k) <= n
    k = k + 1
  end
  k
end

def fibr_print(n)
  k = 0
  while fibr(k) <= n
    p(k.to_s() + "\s" + fibr(k).to_s())
    k = k + 1
  end
  p(k.to_s() + "\s" + fibr(k).to_s())
end

def compare_fib(k)
  format = "%i\s%i\s%i\s%s"
  for i in 0..k
    p sprintf(format, i, fibr(i), fibl(i), fibr(i) == fibl(i))
  end
end

def compare_fib_until(k)
  if k >= 1
    if fibr(k) == fibl(k)
      compare_fib_until(k-1)
    else
      false
    end
  else
    fibr(0) == fibl(0)
  end
end

def fiba(k)
  phi = (1 + sqrt(5))/2
  phi**(k+1)/sqrt(5)
end

def error_fib(k)
  a = Array.new(k+1)
  for i in 0..k
    a[i] = [i,fiba(i) - fibl(i)]
  end
  a
end

def relativeerror_fib(k)
  a = Array.new(k+1)
  for i in 0..k
    a[i] = [i,fiba(i)/fibl(i) - 1]
  end
  a
end

def fibl_false(k)
  f = 1
  p1 = 1
  for i in 2..k
    p1 = f
    p2 = p1
    f  = p1 + p2
  end
  f
end

def time_fibr(k) #[s]
  1.4*10**(-6)*1.6**k
end

def fibl6(k)
  f = 1
  p1 = 1
  for i in 2..k
    p2 = p1                  #fibl6(i-2)
    p1 = f                   #fibl6(i-1)
    f  = (p1 + p2) % 1000000 #fibl6(i)
  end
  f                          #fibl6(k)
end
