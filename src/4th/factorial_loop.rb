def factorial_loop(n)
  if n == 0
    1
  else
    x = 1
    for i in 1..n
      x = x*i
    end
    x
  end
end
