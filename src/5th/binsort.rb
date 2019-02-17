load("~/info_science/3rd/make1d.rb")

def count(a,max)
  c = make1d(max)
  for i in 0..(a.length()-1)
    c[a[i]] = c[a[i]] + 1
  end
  c
end

def rebuild(c,n)
  b = Array.new(n)
  i = 0 
  for j in 0..(c.length()-1)
    for k in 1..c[j]
      b[i] = j
      i = i + 1
    end
  end
  b
end

def binsort(a,max) # n = a.length() としたとき、計算量は O(max{n,max})
  rebuild(count(a,max),a.length())
end
  
      
    
