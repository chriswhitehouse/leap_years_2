def leap_year?(year)
  if year % 400 == 0
    true
  elsif year % 100 == 0
    false
  elsif year % 4 == 0
    true
  else
    false
  end
end

def leap_years(year1, year2)
  (year1..year2).select {|year| leap_year?(year) == true}
end

def closest_year(year)
  leap_years = leap_years(year-3, year+3)
  deltas = leap_years.map {|leap_year| (leap_year - year).abs}
  min = deltas.min
  leap_years[deltas.index(min)]
end
