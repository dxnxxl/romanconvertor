def fromRoman(romanNumber)
  if romanNumber =~ /[?=MDCLXVI]/
    raise TypeError
  end
  reversed_map= {
      "M" => 1000,
      "CM" => 900,
      "D" => 500,
      "CD" => 400,
      "C" => 100,
      "XC" => 90,
      "L" => 50,
      "XL" => 40,
      "X" => 10,
      "IX" => 9,
      "V" => 5,
      "IV" => 4,
      "I" => 1
  }
  result = 0
  (0..romanNumber.length - 1).each { |i|
    if i > 0 and reversed_map[romanNumber[i]] > reversed_map[romanNumber[i - 1]]
      result += reversed_map[romanNumber[i]] - 2 * reversed_map[romanNumber[i - 1]]
    else
      result += reversed_map[romanNumber[i]]
    end
  }
  result
end


def toRoman(arabicNumber)
  roman_map = {
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
  if arabicNumber>3999 || arabicNumber <=0
    raise RangeError
  end
  result = ""
  roman_map.each do |value, roman_char|
    result << roman_char * (arabicNumber/value)
    arabicNumber %= value
  end
  result
end


