load("./match.rb")

def match_safe(s,p)
  i = 0
  w = p.length()
  l = s.length()
  while (i+w) <= l && submatch(s,i,p,w) < w
    i = i + 1
  end
  if i == l
    -1
  else
    i
  end
end
    
def match_safe2(s,p)
  j = -1
  w = p.length()
  l = s.length()
  for i in 0..(l-w)
    if submatch(s,i,p,w) == w
      j = i
      break
    end
  end
  j
end
