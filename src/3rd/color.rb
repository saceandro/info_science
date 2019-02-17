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

def make2d_color(m,n)
  a = Array.new(m)
  for i in 0..m-1
    a[i] = make2d(n,3)
  end
  a
end

def abs(x)
  if x<0
    -x
  else
    x
  end
end

def original_color()
  r = 100
  img = make2d_color(2*r+1,2*r+1)
  for y in 0..(2*r)
    for x in 0..(2*r)
      p = abs(x-r)
      q = abs(y-r)
      d = p**(2.0/3) + q**(2.0/3)
      r1 = r**(2.0/3)
      if d > r1
        img[y][x] = [1,1,1]
      else
        f = (x+y)/(4.0*r)
        img[y][x][0] = 0.5*(cos(8*PI*f + PI/4) + 1)
        img[y][x][1] = 0.5*(cos(8*PI*f) + 1)
        img[y][x][2] = 0.5*(sin(8*PI*f) + 1)
      end
    end
  end
  img
end

def image_average_color(img,x,y,z)
  h = img.length()
  w = img[0].length()
  if y == 0
    if x == 0
      (img[0][0][z]+img[0][1][z]+img[1][0][z]+img[1][1][z])/4.0
    else
      if x == w-1
        (img[0][x-1][z]+img[0][x][z]+img[1][x-1][z]+img[1][x][z])/4.0
      else
        (img[0][x-1][z]+img[0][x][z]+img[0][x+1][z]+img[1][x-1][z]+img[1][x][z]+img[1][x+1][z])/6.0
      end
    end
  else
    if y == h-1
      if x == 0
        (img[y-1][0][z]+img[y-1][1][z]+img[y][0][z]+img[y][1][z])/4.0
      else
        if x == w-1
          (img[y-1][x-1][z]+img[y-1][x][z]+img[y][x-1][z]+img[y][x][z])/4.0
        else
          (img[y-1][x-1][z]+img[y-1][x][z]+img[y-1][x+1][z]+img[y][x-1][z]+img[y][x][z]+img[y][x+1][z])/6.0
        end
      end
    else
      if x == 0
        (img[y-1][0][z]+img[y-1][1][z]+img[y][0][z]+img[y][1][z]+img[y+1][0][z]+img[y+1][1][z])/6.0
      else
        if x == w-1
          (img[y-1][x-1][z]+img[y-1][x][z]+img[y][x-1][z]+img[y][x][z]+img[y+1][x-1][z]+img[y+1][x][z])/6.0
        else
          (img[y-1][x-1][z]+img[y-1][x][z]+img[y-1][x+1][z]+img[y][x-1][z]+img[y][x][z]+img[y][x+1][z]+img[y+1][x-1][z]+img[y+1][x][z]+img[y+1][x+1][z])/9.0
        end
      end
    end
  end
end

def blur(img)
  h = img.length()
  w = img[0].length()
  b = make2d_color(h,w)
  for y in 0..h-1
    for x in 0..w-1
      for z in 0..2
        b[y][x][z] = image_average_color(img,x,y,z)
      end
    end
  end
  b
end
        
