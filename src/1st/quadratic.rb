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

