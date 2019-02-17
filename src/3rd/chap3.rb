#!/usr/bin/env ruby

$sample_image__ = [ [0,1,0,1], [1,0,1,0], [0,1,0,1], [1,0,1,0] ]
$sample_array__ = [ 1,2,3,4 ]

$testunits__ = 
    [
   ["abs.rb",
    [["Ex3.1", "abs", "int", 123, -123],
     ["Ex3.1", "abs", "int", 123,  123]]],
   ["quadratic.rb",
    [["Ex3.3 a", "solutions", "int", 2, 1.0, 1.0, -2.0],
     ["Ex3.3 b", "solve1", "solution", [1.0, 2.0], 1.0, -3.0, 2.0]]],
   ["median.rb",
    [["Ex3.3 c", "median", "float", 1, 2, 1, 0]]],
   ["tax.rb",
    [["Ex3.3 d", "income_tax", "float", 520.4, 2000],
     ["Ex3.3 d", "income_tax", "float", 176.4, 1000]]],
   ["calendar.rb",
    [["Ex3.3 e", "days_of_february", "int", 28, 2007],
     ["Ex3.3 f", "days_of_month", "int", 31, 1685,3]]],
   ["median.rb",
    [["Ex3.4 a", "median1", "float", 1, 2, 1, 0],
     ["Ex3.4 b", "median2", "float", 1, 2, 1, 0]]],
   ["divisible.rb",
    [["Ex3.5 a", "divisible", "boolean", true, 85585900, 3581],
     ["Ex3.5 a", "divisible", "boolean", false, 85585900, 3582]]],
   ["median.rb",
    [["Ex3.5 b", "ascending", "boolean", true, 3,8,9],
     ["Ex3.5 b", "ascending", "boolean", false, 8,3,9],
     ["Ex3.5 b", "ascending", "boolean", false, 9,8,3],
     ["Ex3.5 b", "ascending", "boolean", false, 3,3,3]]],
   ["calendar.rb",
    [["Ex3.5 c", "leap_year", "boolean", true, 2000],
     ["Ex3.5 c", "leap_year", "boolean", true, 2008],
     ["Ex3.5 c", "leap_year", "boolean", false, 2100],
     ["Ex3.5 c", "leap_year", "boolean", false, 1900],
     ["Ex3.5 c", "leap_year", "boolean", false, 2009]]],
   ["within.rb",
    [["Ex3.5 d", "within_range", "boolean", true, [1,2,3], 2],
     ["Ex3.5 d", "within_range", "boolean", false, [1,2,3], 3],
     ["Ex3.5 d", "within_range", "boolean", true, [1,2,3], 0],
     ["Ex3.5 d", "within_range", "boolean", false, [], 0],
     ["Ex3.5 e", "within_image", "boolean", true, $sample_image__, 0,0],
     ["Ex3.5 e", "within_image", "boolean", true, $sample_image__, 3,3],
     ["Ex3.5 e", "within_image", "boolean", false, $sample_image__, 4,3],
     ["Ex3.5 e", "within_image", "boolean", false, $sample_image__, 3,4]]],
   ["logic.rb",
    [["Ex3.6", "xor", "boolean", false, false, false],
     ["Ex3.6", "xor", "boolean", false, true,  true],
     ["Ex3.6", "xor", "boolean", true,  false, true],
     ["Ex3.6", "xor", "boolean", true,  true,  false],
     ["Ex3.6", "implies", "boolean", true, false, true],
     ["Ex3.6", "implies", "boolean", true,  false, true],
     ["Ex3.6", "implies", "boolean", false, true,  false],
     ["Ex3.6", "implies", "boolean", true,  true,  true]]],
   ["string.rb",
    [["Ex3.7 a", "longer", "string", "kilometer", "kilometer",  "mile"],
     ["Ex3.7 b", "trim", "string", "implicit", "simplicity"],
     ["Ex3.7 c", "upsidedown", "string", "overtake", "takeover"],
     ["Ex3.7 c", "upsidedown", "string", "abcedfg", "dfgeabc"]]],
   ["array.rb",
    [["Ex3.8 a", "length3", "int", 2, $sample_array__, 3],
     ["Ex3.8 a", "length3", "int", 3, $sample_array__, 2],
     ["Ex3.8 a", "length3", "int", 2, $sample_array__, 0],
     ["Ex3.8 a", "length3", "int", 1, [99], 0]]],
   ["image_average.rb",
    [["Ex3.8 b", "image_average", "float", 0.5, $sample_image__, 3, 3],
     ["Ex3.8 b", "image_average", "float", 0.5, $sample_image__, 1, 3],
     ["Ex3.8 b", "image_average", "float", 5.0/9, $sample_image__, 2, 1],
     ["Ex3.8 b", "image_average", "float", 1.0, [[1]], 0, 0],
     ["Ex3.8 b", "sum", "float", 7, $sample_array__, 3],
     ["Ex3.8 b", "array_average", "float", 3.5, $sample_array__, 3],
    ]],
   ["gradation.rb",
    [
     ["Ex3.9", "gradation", "array", [0, 1/3.0, 2/3.0], 3]]]
     ]

def equal_solution(expected, retval) 
  equal_or(expected, retval, method(:equal_float))
end

def equal_or(expected, retval, m_obj)
  expected.any? { |v| 
    m_obj.call(v,retval) 
  }
end

# version 1.3
# see http://lecture.ecc.u-tokyo.ac.jp/johzu/joho-kagaku/
