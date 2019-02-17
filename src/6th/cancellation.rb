include(Math)
load("~/info_science/3rd/abs.rb")
load("~/info_science/3rd/make1d.rb")

def f(x)
  log(x)
end

def cancellations(x,h_digits)
  errors = make1d(h_digits+1)
  for i in 0..h_digits
    h = 0.1**i
    df = (f(x+h)-f(x))/h
    errors[i] = abs(df-1.0/x)
  end
  errors
end

def cancellations_put(x,h_digits)
  ff = open("cancellation.dat","w")
  format = "%.15e\t%.15e\n"
  for i in 0..h_digits
    h = 0.1**i
    df = (f(x+h)-f(x))/h
    error = abs(df-1.0/x)
    ff.puts sprintf(format,h,error)
  end
  ff.close
end
