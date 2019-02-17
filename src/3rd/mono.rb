include(Math)

def make1d(n)
  a = Array.new(n)
  for i in 0..(n-1)
    a[i] = 0
  end
  a
end

def make2d(m,n)
  a = Array.new(m)
  for i in 0..(m-1)
    a[i] = make1d(n)
  end
  a
end

def original()
  r = 100
  img = make2d(2*r+1,2*r+1)
  for y in 0..(2*r)
    for x in 0..(2*r)
      p = x-r
      q = y-r
      l = sqrt(p**2 + q**2)
      theta = atan2(q,p)
      if l > r*sin(7*theta)
        img[y][x] = 1.0
      else
        img[y][x] = 0.5*(sin(8*PI*l/r)+1)*(l/r)
      end
    end
  end
  img
end

def image_average(img,x,y)
  h = img.length()
  w = img[0].length()
  if y == 0
    if x == 0
      (img[0][0]+img[0][1]+img[1][0]+img[1][1])/4.0
    else
      if x == w-1
        (img[0][x-1]+img[0][x]+img[1][x-1]+img[1][x])/4.0
      else
        (img[0][x-1]+img[0][x]+img[0][x+1]+img[1][x-1]+img[1][x]+img[1][x+1])/6.0
      end
    end
  else
    if y == h-1
      if x == 0
        (img[y-1][0]+img[y-1][1]+img[y][0]+img[y][1])/4.0
      else
        if x == w-1
          (img[y-1][x-1]+img[y-1][x]+img[y][x-1]+img[y][x])/4.0
        else
          (img[y-1][x-1]+img[y-1][x]+img[y-1][x+1]+img[y][x-1]+img[y][x]+img[y][x+1])/6.0
        end
      end
    else
      if x == 0
        (img[y-1][0]+img[y-1][1]+img[y][0]+img[y][1]+img[y+1][0]+img[y+1][1])/6.0
      else
        if x == w-1
          (img[y-1][x-1]+img[y-1][x]+img[y][x-1]+img[y][x]+img[y+1][x-1]+img[y+1][x])/6.0
        else
          (img[y-1][x-1]+img[y-1][x]+img[y-1][x+1]+img[y][x-1]+img[y][x]+img[y][x+1]+img[y+1][x-1]+img[y+1][x]+img[y+1][x+1])/9.0
        end
      end
    end
  end
end
          
def blur(img)
  h = img.length()
  w = img[0].length()
  b = make2d(h,w)
  for y in 0..h-1
    for x in 0..w-1
      b[y][x] = image_average(img,x,y)
    end
  end
  b
end




      
    
  
  
