include(Math)
load("../1st/distance.rb")

def b(r,x,y)
  l = distance(x,y,r,r)
  if l <= r
    1.0 - 1.0*l/r
  else
    1.0
  end
end
