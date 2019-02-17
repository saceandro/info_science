load("~/exercise1/johokagaku/simplesort.rb")
load("~/exercise1/johokagaku/mergesort.rb")
load("~/info_science/5th/randoms.rb")

def simplesort_check(max,step)
  k = 0
  for i in 1..(max/step)
    x = i*step
    a = randoms(i,x,1)
    simplesort(a)
    b = randoms(i,x,1)
    b = mergesort(b)
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
    
