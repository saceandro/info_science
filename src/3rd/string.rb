def longer(s,t)
  if s.length() < t.length()
    t
  else
    s
  end
end

def trim(s)  # s.length() >=2
  l = s.length()
  if l <= 2
    ""
  else
    s[1..(l-2)]
  end
end

def upsidedown(s)
  l = s.length()
  if l <= 1
    s
  else
    if l%2 == 0
      s[(l/2)..(l-1)] + s[0..(l/2 - 1)]
    else
      s[((l+1)/2)..(l-1)] + s[((l-1)/2)..((l-1)/2)] + s[0..((l-3)/2)]
    end
  end
end
  
