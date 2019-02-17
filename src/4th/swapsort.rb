load("./swap.rb")

def is_ascending_loop(a)
  n = a.length()
  i = 1
  while i < n && a[i-1] <= a[i]
    i = i + 1
  end
  if i == n
    true
  else
    false
  end
end

def is_ascending(a)
  n = a.length()
  if n >= 2
    a[0] <= a[1] && is_ascending(a[1..(n-1)])
  else
    true
  end
end
  
def swap_ascending(a,i)
  if a[i] > a[i+1]
    swap(a,i,i+1)
  end
  a
end

def swap_ascending_all(a)
  for i in 0..(a.length()-2)
    swap_ascending(a,i)
  end
  a
end

def swapsort(a)
  for i in 2..a.length()
    swap_ascending_all(a)
  end
  a
end
