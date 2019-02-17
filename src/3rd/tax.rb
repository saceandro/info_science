def income_tax(income)  #income[10,000yen] income_tax(income)[10,000yen]
a = 195*0.05
b = (330-195)*0.10
c = (695-330)*0.20
d = (900-695)*0.23
f = (1800-900)*0.33
  if income <= 195
    income*0.05
  else
    if 195 < income && income <= 330
      a + (income-195)*0.10
    else
      if 330 < income && income <= 695
        a + b + (income-330)*0.20
      else
        if 695 < income && income <= 900
          a + b + c + (income-695)*0.23
        else
          if 900 < income && income <= 1800
            a + b + c + d + (income-900)*0.33
          else
            if 1800 < income
              a + b + c + d + f + (income-1800)*0.40
            end
          end
        end
      end
    end
  end
end
      
