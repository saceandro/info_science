include(Math)

def abs(x)
  if x < 0
    -x
  else
    x
  end
end

def distance(x,y)
  sqrt(x**2 + y**2)
end

def make2d(m,n)
  a = Array.new(m)
  for i in 0..(m-1)
    a[i] = Array.new(n)
  end
  a
end

def penetration(theta,d,x,y)
  q = abs(x*cos(theta) + y*sin(theta) - d)
  if q < 0.5
    sqrt(1 - 4*q**2)
  else
    0.0
  end
end

def coefficients(l,n)
  a = make2d(l*n,l**2)
  for k in 0..(n-1)
    for d in 0..(l-1)
      for y in 0..(l-1)
        for x in 0..(l-1)
          a[l*k+d][l*y+x] = penetration(PI*k/n,d,x,y)
        end
      end
    end
  end
  a
end

def make_equations(l,n,m,s)
  a = make2d(l*n,l**2+1)
  for k in 0..(n-1)
    for d in 0..(l-1)
      a[l*k+d] = m[l*k+d] << s[k][d]
    end
  end
  a
end

def reconstruct(s)
  n = s.length()
  l = s[0].length()
  m = coefficients(l,n)
  equations = make_equations(l,n,m,s)
  solved = gjp(equations)
  equations_to_image(l,solved)
end

def equations_to_image(l,solved)
  a = make2d(l,l)
  for k in 0..(l-1)
    for d in 0..(l-1)
      a[k][d] = solved[l*k+d][l**2]
    end
  end
  a
end
