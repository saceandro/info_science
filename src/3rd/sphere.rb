require("komaba/array")
load("./make2d.rb")
load("./b.rb")
def sphere(r)
  image = make2d(2*r+1, 2*r+1)
  for y in 0..(2*r)
    for x in 0..(2*r)
      image[y][x] = b(r,x,y)
    end
  end
  image
end
