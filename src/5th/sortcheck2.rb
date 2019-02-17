load("./simplesort.rb")
load("./mergesort.rb")
load("~/info_science/5th/randoms.rb")
load("./mergesort_r.rb")

def radixsort_check(max,step,maximum,m)
  k = 0
  for i in 1..(max/step)
    x = i*step
    a = randoms(i,x,maximum)
    quicksort(a)
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
    
