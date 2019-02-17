def xor1(x,y)  # x,y: true or false
  if (x == false && y == false) || (x == true && y == true)
    false
  else
    true
  end
end

def xor(x,y)
  if x == y
    false
  else
    true
  end
end

def implies(x,y)
  if x == true && y == false
    false
  else 
    true
  end
end
