load("~/info_science/3rd/abs.rb")
load("~/info_science/4th/swap.rb")

def gjp(a) # Gauss-Jordan method WITH pivoting
  row = a.length()
  col = a[0].length()
  for k in 0..(col-2)
    max = maxrow(a,k) # find absolute-maxial coeff.
    swap(a,k,max)     # swap rows
    akk = a[k][k]
    for i in 0..(col-1)         # normalize row k
      a[k][i] = a[k][i]*1.0/akk
    end
    for i in 0..(row-1)         # eliminate column k
      if i != k                 # of all rows but k
        aik = a[i][k]
        for j in k..(col-1)
          a[i][j] = a[i][j] - aik * a[k][j]
        end
      end
    end
  end
  a
end
    
def maxrow(a,k)
  row = a.length()
  maxrow = k # temporary maxrow
  for i in (k+1)..(row-1)
    if abs(a[maxrow][k]) < abs(a[i][k])
      maxrow = i
    end
  end
  maxrow
end

      
