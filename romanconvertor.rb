def roman_map
  {
      1000 => "M",
      900 => "CM",
      500 => "D",
      400 => "CD",
      100 => "C",
      90 => "XC",
      50 => "L",
      40 => "XL",
      10 => "X",
      9 => "IX",
      5 => "V",
      4 => "IV",
      1 => "I"
  }
end

def fromRoman(romanNumber)
  result = 0
  str = self
  roman_map.values.each do |roman|
    while str.start_with?(roman)
      result += roman_map.invert[roman]
      str = str.slice(roman.length, str.length)
    end
  end
  result
end

def toRoman(arabicNumber)
  result = ""
  number = self
  roman_map.keys.each do |divisor|
    quotient, modulus = number.divmod(divisor)
    result << roman_map[divisor] * quotient
    number = modulus
    end
  result
  end

