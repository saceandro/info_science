# sum of the numbers from 1 to n
def sum(n)
  if n >=2 
    sum(n-1) + n
  else
    1
  end
end
    
