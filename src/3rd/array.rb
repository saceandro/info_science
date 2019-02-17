def length3(a,x)
  l = a.length()
  if 0 < x && x < l-1
    3
  else
    if x == 0 && l == 1
      1
    else
      if l > 1 && (x == 0 || x == (l-1))
        2
      end
    end
  end
end
