load("./randoms.rb")    # randoms(id,size,max)
load("./bench.rb")      # run(function_name, x, v)
load("./mergesort.rb")  # mergesort(a)
load("./mergesort_r.rb")# mergesort_r(a)

def compare_msort(max, step)
  for i in 1..(max/step)
    x = i*step
    a = randoms(i,x,1)
    run("mergesort", x, a)
    a = randoms(i,x,1)
    run("mergesort_r", x, a)
  end
end
