load("./make1d.rb")

def submatch(s,i,p,w)
  j = 0
  while j < w && s[(i+j)..(i+j)] == p[j..j]
    j = j + 1
  end
  j
end

def match(s,p)
  i = 0
  w = p.length()
  while submatch(s,i,p,w) < w
    i = i + 1
  end
  i
end

def match2(s,p)
  w = p.length()
  l = s.length()
  a = []
  for i in 0..(l-w)
    if submatch(s,i,p,w) == w
      a.push(i)
    end
  end
  a
end
