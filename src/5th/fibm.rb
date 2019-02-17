include(Math)
load("./make2d.rb")
load("./fib.rb")
def matmul(a,b)
  [[a[0][0]*b[0][0] + a[0][1]*b[1][0], a[0][0]*b[0][1] + a[0][1]*b[1][1]], [a[1][0]*b[0][0] + a[1][1]*b[1][0], a[1][0]*b[0][1] + a[1][1]*b[1][1]]]
end

def matsquare(a)
  matmul(a,a)
end

def matpower(a,n)
  if n == 0
    [[1,0],[0,1]]
  else
    if n%2 == 0
      matsquare(matpower(a,n/2))
    else
      matmul(a,matpower(a,n-1))
    end
  end
end

def fibm(k)
  q = [[1,1],[1,0]]
  q_k = matpower(q,k)
  q_k[1][0] + q_k[1][1]
end

def compare_fibm_fibl(k)
  if k >= 1
    fibm(k) == fibl(k) && compare_fibm_fibl(k-1)
  else
    fibm(0) == fibl(0)
  end
end
    
def matmul6(a,b)
  [[(a[0][0]*b[0][0] + a[0][1]*b[1][0]) % 1000000, (a[0][0]*b[0][1] + a[0][1]*b[1][1]) % 1000000], [(a[1][0]*b[0][0] + a[1][1]*b[1][0]) % 1000000, (a[1][0]*b[0][1] + a[1][1]*b[1][1]) % 1000000]]
end

def matsquare6(a)
  matmul6(a,a)
end

def matpower6(a,n)
  if n == 0
    [[1,0],[0,1]]
  else
    if n%2 == 0
      matsquare6(matpower6(a,n/2))
    else
      matmul6(a,matpower6(a,n-1))
    end
  end
end

def fibm6(k)
  q = [[1,1],[1,0]]
  q_k = matpower6(q,k)
  (q_k[1][0] + q_k[1][1]) % 1000000
end

def fibm_eigen(k)
  lambda1 = (1+sqrt(5))/2
  lambda2 = (1-sqrt(5))/2
  lambda1k = power(lambda1,k)
  lambda2k = power(lambda2,k)
  a = [[1,1],[-lambda2,-lambda1]]
  b = [[lambda1k,0],[0,lambda2k]]
  c = [[-lambda1,-1],[lambda2,1]]
  q_k1 = matmul(a,matmul(b,c))
  (q_k1[1][0]+q_k1[1][1])/(lambda2-lambda1)
end

def power(x,n)
  if n == 0
    1
  else
    if n%2 == 0
      (power(x,n/2))**2
    else
      x*power(x,n-1)
    end
  end
end

def fib_kotae(k)
  if k == 0
    1
  else
    lambda1 = (1+sqrt(5))/2
    lambda2 = (1-sqrt(5))/2
    lambda1k_1 = power(lambda1,k-1)
    lambda2k_1 = power(lambda2,k-1)
    ((lambda1+1)*lambda1k_1 - (lambda2+1)*lambda2k_1)/(lambda1 - lambda2)
  end
end
