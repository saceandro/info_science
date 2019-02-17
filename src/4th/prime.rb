load("./gd.rb")
load("./sod.rb")

def prime(n)
  if n == 1
    true
  else
    if sod(n,n-1) == 1
      true
    else
      false
    end
  end
end

def prime2(n)
  if n == 1
    true
  else
    if gd(n,n-1) == 1
      true
    else
      false
    end
  end
end
  
def nod(k,n)
  if n >= 2
    if k%n == 0
      nod(k,n-1) + 1
    else
      nod(k,n-1)
    end
  else
    1
  end
end

def nop(n)
  if n >= 2
    if gd(n,n-1) == 1
      nop(n-1) + 1
    else
      nop(n-1)
    end
  else
    0
  end
end

def msod(n)
  if n == 1
    1
  else
    if sod(n,n) <= msod(n-1)
      msod(n-1)
    else
      sod(n,n)
    end
  end
end

def np(n)
  if n >= 2
    if gd(n,n-1) == 1
      n
    else
      np(n+1)
    end
  else
    np(2)
  end
end

def nth_prime(p,n)
  if n >= 1
    nth_prime(np(p+1),n-1)
  else
    p
  end
end

def next_perfect(n)
  if n >= 2
    if n == sod(n,n-1)
      n
    else
      next_perfect(n+1)
    end
  else
    next_perfect(2)
  end
end
  
