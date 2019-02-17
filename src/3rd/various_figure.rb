load("./make2d.rb")

def img_a(s)
  img = make2d(s,s)
  for y in 0..(s-1)
    for x in 0..(s-1)
      img[y][x] = a(s,x,y)
    end
  end
  img
end

def a(s,x,y)
  if y >= x
    1.0*y/s
  else
    1.0
  end
end
    
def img_b(s)
  img = make2d(s,s)
  for y in 0..(s-1)
    for x in 0..(s-1)
      img[y][x] = b(s,x,y)
    end
  end
  img
end
             
def b(s,x,y)
  if (y%2 == 0 && x%2 == 0) || (y%2 == 1 && x%2 == 1)
    1
  else
    0
  end
end

def img_c(s)
  img = make2d(s,s)
  for y in 0..(s-1)
    for x in 0..(s-1)
      img[y][x] = c(s,x,y)
    end
  end
  img
end

def c(s,x,y)
  (x+y)/(2.0*(s-1))
end

def img_d(s)
  img = make2d(s,s)
  for y in 0..(s-1)
    for x in 0..(s-1)
      img[y][x] = d(s,x,y)
    end
  end
  img
end

include(Math)

def d(s,x,y)
  if y < (s/2.0)*(1+sin(4*PI*x/(s-1)))
    1.0*y/s
  else
    1.0
  end
end

def img_e(s)
  img = make2d(s,s)
  for y in 0..(s-1)
    for x in 0..(s-1)
      img[y][x] = e(s,x,y)
    end
  end
  img
end

def e(s,x,y)
  0.5*(cos(4*PI*x/(s-1) - PI/3) + 1)
end

def img_f(s)
  img = make2d(s,s)
  for y in 0..(s-1)
    for x in 0..(s-1)
      img[y][x] = f(s,x,y)
    end
  end
  img
end

load("../1st/distance.rb")

def f(s,x,y)
  d = distance(s/2.0,s/2.0,x,y)
  0.5*(cos(12*PI*d/(s-1)) + 1)
end

def img_g(s)
  img = make2d(s,s)
  for y in 0..(s-1)
    for x in 0..(s-1)
      img[y][x] = g(s,x,y)
    end
  end
  img
end

def g(s,x,y)
  r = distance(s/2.0,s/2.0,x,y)
  theta = atan2(y,x)
  if r > theta && r < theta + 1 
    1
  else
    0
  end
end

