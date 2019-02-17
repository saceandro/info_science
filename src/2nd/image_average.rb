def image_average9(image,x,y)
  a=image
  (a[y-1][x-1]+ a[y-1][x]+a[y-1][x+1]+a[y][x-1]  + a[y][x]  +a[y][x+1]+a[y+1][x-1]+ a[y+1][x]+a[y+1][x+1])/9.0
end
def sum3(a,x)
  a[x-1] + a[x] + a[x+1]
end
def array_average3(a,x)
  sum3(a,x)/3.0
end

def image_average(image,x,y)
  a = image
  h = a.length()
  w = a[0].length()
  if y == 0
    if x == 0
      (a[0][0]+a[0][1]+a[1][0]+a[1][1])/4.0
    else
      if x == w-1
        (a[0][w-1]+a[0][w-2]+a[1][w-1]+a[1][w-2])/4.0
      else
        (a[0][x-1]+a[0][x]+a[0][x+1]+a[1][x-1]+a[1][x]+a[1][x+1])/6.0
      end
    end
  else
    if y == h-1
      if x == 0
        (a[h-2][0]+a[h-2][1]+a[h-1][0]+a[h-1][1])/4.0
      else
        if x == w-1
          (a[y-1][x-1]+a[y-1][x]+a[y][x-1]+a[y][x])/4.0
        else
          (a[y-1][x-1]+a[y-1][x]+a[y-1][x+1]+a[y][x-1]+a[y][x]+a[y][x+1])/6.0
        end
      end
    else
      if x == 0
        (a[y-1][0]+a[y][0]+a[y+1][0]+a[y-1][1]+a[y][1]+a[y+1][1])/6.0
      else
        if x == w-1
          (a[y-1][x-1]+a[y][x-1]+a[y+1][x-1]+a[y-1][x]+a[y][x]+a[y+1][x])/6.0
        else
          image_average9(a,x,y)
        end
      end
    end
  end
end
    
def sum(a,x)
  l = a.length()
  if l > 1
    if 0 < x && x < l-1
      a[x-1]+a[x]+a[x+1]
    else
      if x == 0
        a[0]+a[1]
      else
        a[x-1]+a[x]
      end
    end
  else
    a[0]
  end
end

def array_average(a,x)
l = a.length()
  if x  == 0
    (a[0]+a[1])/2.0
  else
    if x == (l-1)
      (a[l-2]+a[l-1])/2.0
    else
      (a[x-1]+a[x]+a[x+1])/3.0
    end
  end
end

  
