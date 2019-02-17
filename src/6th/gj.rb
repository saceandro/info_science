def gj(a) # Gauss-Jordan method without pivoting
  row = a.length()
  col = a[0].length()
  for k in 0..(col-2)
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
