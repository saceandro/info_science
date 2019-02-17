load("./make2d.rb")

def sierpinski2d(n)
  s = 2**n
  c = make2d(s,s)
  for i in 0..(s-1)
    c[i][0] = 1
    for j in 1..(i-1)
      c[i][j] = (c[i-1][j-1] + c[i-1][j])%2
    end
    c[i][i] = 1
  end
  c
end
