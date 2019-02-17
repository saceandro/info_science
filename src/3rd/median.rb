def median1(x,y,z)
  if y < x
    if z < y       # z < y < x
      y
    else           # y < x and y <= z
      if x < z     # y < x < z
        x
      else         # (y <= z < x) or (y < z <= x) or (y < z < x)
        z
      end
    end
  else             # x <= y
    if y < z       # x <= y < z
      y
    else           # x <= y and z <= y
      if x < z     # x < z <= y
        z
      else         # z <= x <= y
        x
      end
    end
  end
end

def median2(x,y,z)
  if (z <= y && y <= x) || (x <= y && y <= z)
    y
  else
    if (y <= z && z <= x) || (x <= z && z <= y)
      z
    else
      x
    end
  end
end
  
def median3(x,y,z)
  a = [x,y,z,x,y]
  for i in 0..2
    if (a[i] <= a[i+1] && a[i+1] <= a[i+2])||(a[i+2] <= a[i+1] && a[i+1] <= a[i])
      return a[i+1]
      break
    end
  end
end

def median4(x,y,z)
  a = [x,y,z]
  for j in 0..1
    for i in 1..2
      if a[i-1] > a[i]
        p = a[i]
        a[i] = a[i-1]
        a[i-1] = p
      end
    end
  end
  a[1]
end
    
def ascending(x,y,z)
  x < y && y < z
end

def median(x,y,z)
  if (z <= y && y <= x) || (x <= y && y <= z)
    y
  else
    if (y <= z && z <= x) || (x <= z && z <= y)
      z
    else
      x
    end
  end
end
