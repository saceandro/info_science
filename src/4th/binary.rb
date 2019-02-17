def binary(n)
  if n < 2
    n.to_s()
  else
    binary(n/2) + (n%2).to_s()
  end
end