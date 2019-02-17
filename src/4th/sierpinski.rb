load("./make2d.rb")

def cantor2d(n)
  a = make2d(3**n,3**n)
  subcantor2d(a,n,0,0)
  a
end

def subcantor2d(a,n,x,y)
  if n == 0
    a[y][x] = 1
  else
    subcantor2d(a,n-1,x,y)
    subcantor2d(a,n-1,x+3**(n-1),y)
    subcantor2d(a,n-1,x+2*3**(n-1),y)
    subcantor2d(a,n-1,x,y+3**(n-1))
    subcantor2d(a,n-1,x+2*3**(n-1),y+3**(n-1))
    subcantor2d(a,n-1,x,y+2*3**(n-1))
    subcantor2d(a,n-1,x+3**(n-1),y+2*3**(n-1))
    subcantor2d(a,n-1,x+2*3**(n-1),y+2*3**(n-1))
  end
end

def sierpinski2d(n)
  a = make2d(2**n,2**n)
  subsierpinski2d(a,n,0,0)
  a
end

def subsierpinski2d(a,n,x,y)
  if n == 0
    a[y][x] = 1
  else
    subsierpinski2d(a,n-1,x,y)
    subsierpinski2d(a,n-1,x,y+2**(n-1))
    subsierpinski2d(a,n-1,x+2**(n-1),y+2**(n-1))
  end
end
                   
# alternative definition of sierpinski using combination
def sierpinski(n)
  c = make2d(n,n)
  for i in 0..(n-1)
    c[i][0] = 1
    for j in 1..(i/2)
      c[i][j] = (c[i-1][j-1] + c[i-1][j])%2
    end
    for j in (i/2 + 1)..i
      c[i][j] = c[i][i-j]
    end
  end
  c
end

