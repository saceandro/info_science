load("./randoms.rb")    # randoms(id,size,max)
load("./bench.rb")      # run(function_name, x, v)
load("./simplesort.rb") # simplesort(a)
load("./mergesort.rb")  # mergesort(a)
load("./mergesort_r.rb")# mergesort_r(a)
load("./quicksort.rb")  # quicksort(a)
load("./binsort.rb")    # binsort(a,max)
load("./radixsort.rb")  # radixsort(a,max,m), radixsort2(a,max,m)

def compare_sort(max, step)
  for i in 1..(max/step)
    x = i*step
    a = randoms(i,x,1)
    run("simplesort", x, a)
    a = randoms(i,x,1)
    run("mergesort", x, a)
  end
end

def compare_sort2(max,step,maximum,m)
  for i in 1..(max/step)
    x = i*step
    a = randoms(i,x,maximum)
    run("binsort", x, a, maximum)
    a = randoms(i,x,maximum)
    run("radixsort", x, a, maximum, m)
    a = randoms(i,x,maximum)
    run("radixsort2", x, a, maximum, m)
    a = randoms(i,x,maximum)
    run("mergesort", x, a)
  end
end

def compare_sort3(max,step,maximum,m)
  for i in 1..(max/step)
    x = i*step
    a = randoms(i,x,maximum)
    run("binsort", x, a, maximum)
    a = randoms(i,x,maximum)
    run("radixsort2", x, a, maximum, m)
    a = randoms(i,x,maximum)
    run("quicksort", x, a)
  end
end

