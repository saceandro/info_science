def days_of_february(year)
  if year%400 == 0
    29
  else
    if year%100 == 0   # year%400 != 0 and year%100 == 0
      28
    else
      if year%4 == 0   # year%400 != 0 and year%100 != 0 and year%4 == 0
        29
      else             # year%400 != 0 and year%100 != 0 and year%4 != 0
        28
      end
    end
  end
end

def days_of_month(year,month)
  if month == 4 || month == 6 || month == 9 || month ==11
    30
  else
    if month == 2
      days_of_february(year)
    else
      31
    end
  end
end

def leap_year(y)
  if y%400 == 0
    true
  else
    if y%100 == 0
      false
    else
      if y%4 == 0
        true
      else
        false
      end
    end
  end
end
