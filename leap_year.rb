#Leap Year - find the next 25 leap years

#leap_year = false
current_year = 2017
leap_years_calculated = 0

until leap_years_calculated == 25
  
  if leap_years_calculated < 1
    current_year += 1
  else
    current_year += 4
  end
  

  if current_year % 4 == 0 && current_year % 100 != 0
    leap_year = true
    leap_years_calculated += 1
    puts current_year
  end
  
end

