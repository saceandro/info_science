load("~/info_science/5th/mergesort_r.rb")
load("~/info_science/5th/quicksort.rb")
load("~/info_science/5th/randoms.rb")

def quicksort_check(max,step)
  k = 0
  for i in 1..(max/step)
    x = i*step
    a = randoms(i,x,1)
    quicksort(a)
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
    
