def makearrayi(n,i)
  if i >= 1
    p = Array.new(n)
    for j in 0..(n-1)
      p[j] = makearrayi(n,i-1)
    end
    p
  else
    0
  end 
end   

def makearray(d)
  n = d.length()
  if n >= 2
    p = Array.new(d[0])
    for j in 0..(d[0]-1)
      p[j] = makearray(d[1..(n-1)])
    end
    p
  else
    p = Array.new(d[0])  #
    for i in 0..(d[0]-1) #
      p[i] = 0           #
    end                  #
    p                    # p = make1d(d[0])
  end
end
