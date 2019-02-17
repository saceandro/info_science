include(Math)

def heron(a,b,c)
  s = 0.5*(a+b+c)
  sqrt(s*(s-a)*(s-b)*(s-c))
end

def s(a,b,c)
  0.5*(a+b+c)
end

def heron_nlv(a,b,c)
  sqrt(s(a,b,c)*(s(a,b,c)-a)*(s(a,b,c)-b)*(s(a,b,c)-c))
end
