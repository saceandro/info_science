def within_range(a,i)
  if (0 <= i && i <= a.length()-1) || (-a.length() <= i && i <= -1)
    true
  else
    false
  end
end

def within_image(img,x,y)
  if within_range(img,y)
    if within_range(img[y],x)
      true
    else
      false
    end
  else
    false
  end
end
      
      
