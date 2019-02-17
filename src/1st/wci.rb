load("./yardpound.rb")

def wind_chill_index(t,v)
  35.74 + 0.6215*t - 35.75*v**0.16 + 0.4275*t*v**0.16
end

def wind_chill_index_celsius(t,v)
  fahrenheit_to_celsius(wind_chill_index(celsius_to_fahrenheit(t),ms_to_mph(v)))
end


