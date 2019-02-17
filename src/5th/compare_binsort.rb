load("./randoms.rb")    # randoms2(id,size,max)
load("./bench.rb")      # run(function_name, x, v)
load("./binsort.rb")    # binsort(a)
load("./mergesort.rb")  # mergesort(a)

def compare_binsort(max, step,maximum) # maximum: integer
  for i in 1..(max/step)
    x = i*step
    a = randoms(i,x,maximum)
    run("binsort", x, a, maximum)
    a = randoms(i,x,maximum)
    run("mergesort", x, a)
  end
end
