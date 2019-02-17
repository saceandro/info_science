load("./align_rec.rb")
load("./make2d.rb")

def align_score(s,t)
  m = s.length()
  n = t.length()
  a = make2d(m+1,n+1)
  a[0][0] = 0
  for j in 1..n
    a[0][j] = a[0][j-1] + g()
  end
  for i in 1..m
    a[i][0] = a[i-1][0] + g()
  end
  for i in 1..m
    for j in 1..n
      v0 = a[i-1][j] + g()
      v1 = a[i-1][j-1] + q(s[i-1],t[j-1])
      v2 = a[i][j-1] + g()
      a[i][j] = max(v0,max(v1,v2))
    end
  end
  a[m][n]
end

def spell(dict,word)
  max = align_score(dict[0],word)
  max_index = 0
  for i in 1..(dict.length()-1)
    p = align_score(dict[i],word)
    if p > max
      max = p
      max_index = i
    end
  end
  dict[max_index]
end
