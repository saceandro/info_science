def epsilon()
  0.0000001
end

def near_zero(x)
  -epsilon() < x && x < epsilon()
end
