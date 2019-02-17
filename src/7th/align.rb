load("./align_rec.rb")
load("./make2d.rb")

def align(s,t)
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
  a
end

def traceback(a,s,t)
  u = ""
  v = ""
  i = s.length()
  j = t.length()
  while i>0 || j>0
    if j>0 && a[i][j] == a[i][j-1] + g() # 左から求められた場合
      u = "-"           + u
      v = t[j-1 .. j-1] + v
      j = j - 1 # go left
    else
      if i>0 && j>0 && a[i][j] == a[i-1][j-1] + q(s[i-1],t[j-1]) # 左上から求められた場合
        u = s[i-1 .. i-1] + u
        v = t[j-1 .. j-1] + v
        i = i - 1
        j = j - 1 # go upper-left
      else
        if i>0 && a[i][j] == a[i-1][j] + g() # 上から求められた場合
          u = s[i-1 .. i-1] + u
          v = "-"           + v
          i = i - 1 # go upward
        end
      end
    end
  end
  [u,v]
end

def align_dp(s,t)
  traceback(align(s,t),s,t)
end

# アライメントを見やすくしたもの
def traceback_put(a,s,t)
  u = ""
  v = ""
  i = s.length()
  j = t.length()
  while i>0 || j>0
    if j>0 && a[i][j] == a[i][j-1] + g() # 左から求められた場合
      u = "-"           + u
      v = t[j-1 .. j-1] + v
      j = j - 1 # go left
    else
      if i>0 && j>0 && a[i][j] == a[i-1][j-1] + q(s[i-1],t[j-1]) # 左上から求められた場合
        u = s[i-1 .. i-1] + u
        v = t[j-1 .. j-1] + v
        i = i - 1
        j = j - 1 # go upper-left
      else
        if i>0 && a[i][j] == a[i-1][j] + g() # 上から求められた場合
          u = s[i-1 .. i-1] + u
          v = "-"           + v
          i = i - 1 # go upward
        end
      end
    end
  end
  puts u
  puts v
end

def align_dp_put(s,t)
  traceback_put(align(s,t),s,t)
end
