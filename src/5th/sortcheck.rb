load("./simplesort.rb")
load("./mergesort.rb")
load("~/info_science/5th/randoms.rb")
load("./mergesort_r.rb")# mergesort_r(a), quicksort(a), radixsort(a,max,m)
load("./binsort.rb")    # binsort(a,max)

def radixsort_check(max,step,maximum,m)
  k = 0
  for i in 1..(max/step)
    x = i*step
    a = randoms(i,x,maximum)
    a = binsort(a,maximum)
    b = randoms(i,x,maximum)
    b = radixsort(b,maximum,m)
    if a == b
      k = k+1
    end
  end
  if k == max/step
    true
  else
    false
  end
end
    
def quicksort_check(max,step)
  k = 0
  for i in 1..(max/step)
    x = i*step
    a = randoms(i,x,1)
    a = mergesort(a)
    b = randoms(i,x,1)
    quicksort(b)
    if a == b
      k = k+1
    end
  end
  if k == max/step
    true
  else
    false
  end
end

def mergesort_check(max,step)
  k = 0
  for i in 1..(max/step)
    x = i*step
    a = randoms(i,x,1)
    a = mergesort(a)
    b = randoms(i,x,1)
    b = mergesort_r(b)
    if a == b
      k = k+1
    end
  end
  if k == max/step
    true
  else
    false
  end
end
