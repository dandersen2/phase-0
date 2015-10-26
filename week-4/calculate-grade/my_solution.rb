# Calculate a Grade

# I worked on this challenge with Jamar Gibbs.


# Your Solution Below

def get_grade(number)
  if number.to_i >= 90
    return "A"
  elsif number.to_i >= 80
    return "B"
  elsif number.to_i >= 70
    return "C"
  elsif number.to_i >= 60
    return "D"
  else
    return "F"
  end
end
