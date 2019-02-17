load("./make2d.rb")
load("./abs.rb")

def color_pattern(s)
  image = make2d(s,s)
  for y in 0..(s-1)
    for x in 0..(s-1)
      r = (y+1.0)/s
      g = (x+1.0)/s
      b = abs(x+y+2.0-s)/s
      image[y][x] = [r,g,b]
    end
  end
  image
end
