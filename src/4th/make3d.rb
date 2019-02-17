load("./make2d.rb")

def make3d(a,b,c)
  p = Array.new(a)
  for i in 0..(a-1)
    p[i] = make2d(b,c)
  end
  p
end
