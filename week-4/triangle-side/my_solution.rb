# I worked on this challenge with Jamar Gibbs.


# Your Solution Below

def valid_triangle?(a, b, c)

  # Non-triangle test  (If any or all sides are of 0 length, then there is no triangle. There is no spoon...)
  if a == 0 || b == 0 || c == 0
    return false
  end

  # Equilateral triangle test (If every side is of equal length, then it is a valid equilateral triangle)
  if a == b && b == c && c == a
    return true
  end

  # Impossible triangle test (If any one side is longer than the sum of the other two sides then the triangle is invalid
  # because the three sides cannot mathematically be connected, which is a requirement for a valid tringle.  )
  if a > (b + c) || b > (a + c) || c > (b + a)
    return false
  end

  # Isoceles triangle test (If any two of the sides are of equal length, the triangle is isoceles. If all three are equal it is equilateral which is a subset of isoceles and is also valid.)
  if a == b || b == c || c == a
    return true
  end

  # pythagorean triple test (If a^2 + b^2 = c^2, or any other combination where the pythagorean theorem applies, the triangle is valid.)
  if a*a + b*b == c*c || a*a + c*c == b*b || b*b + c*c == a*a
    return true
  end

end
