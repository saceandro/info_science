load("./randoms2.rb")
load("./bench.rb")
load("./birthday.rb")

def compare_birthday(max,step)
  for i in 1..(max/step)
    x = i*step
    a = randoms2(i,x,365)
    run("birthday1",x,a)
    run("birthday1_quick",x,a)
    run("birthday2",x,a)
    run("birthday3",x,a)
  end
end
