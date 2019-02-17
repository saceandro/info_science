# solving quadratic equation
include(Math)
def det(a,b,c)
  b**2 - 4.0*a*c
end
def solution1(a,b,c)
  (-b + sqrt(det(a,b,c)))/(2.0*a)
end
def solution2(a,b,c)
  -1.0*b/a - solution1(a,b,c)
end
def quadratic(a,b,c,x)
  a*x**2 + b*x + c
end
def solutions(a,b,c)
  if a == 0
    if b == 0
      if c == 0
        -1
      else
        0
      end
    else
      1
    end
  else
    if det(a,b,c) > 0
          2
    else
      if det(a,b,c) == 0
            1
      else
        0
      end
    end
  end
end
def solve1(a,b,c)
  if a == 0
    if b == 0
      if c == 0
        0
      else
        "none"
      end
    else
      -1.0*c/b
    end
  else
    if det(a,b,c) < 0
      "none"
    else
      solution1(a,b,c)
    end
  end
end
    
      
        
